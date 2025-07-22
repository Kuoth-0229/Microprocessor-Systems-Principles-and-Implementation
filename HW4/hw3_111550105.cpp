/*
Student No.: 111550105
Student Name: TSUNG-HSIN KUO 郭宗信
Email: martin0229.kuo@gmail.com
SE tag: xnxcxtxuxoxsx
Statement: I am fully aware that this program is not
supposed to be posted to a public server, such as a
public GitHub repository or a public web page.
*/


#include <fstream>
#include <iostream>
#include <pthread.h>
#include <queue>
#include <semaphore.h>
#include <sys/time.h>
#include <iomanip>
#include <utility>

using namespace std;

// Function declarations
void bubble_sort(int *arr, int start, int end);
void merge(int *arr, int start, int mid, int end);
void *execute_task(void *pool);

class ThreadPool {
public:
    sem_t mutex, done;
    int array_size;
    int num_threads;
    int* array;
    int tasks_completed[16] = {0};
    pthread_t *threads;
    pair<int, int> task_range[16];
    queue<int> job_queue;

    // Constructor
    ThreadPool(int threads) : num_threads(threads) {}

    // Destructor
    ~ThreadPool() {
        if (threads != nullptr) {
            delete[] threads;
        }
        sem_destroy(&mutex);
        sem_destroy(&done);
    }

    void read_input() {
        sem_init(&mutex, 0, 1);
        sem_init(&done, 0, 0);

        ifstream input_file("input.txt");
        input_file >> array_size;
        array = (int*)malloc(array_size * sizeof(int));
        for (int i = 0; i < array_size; i++) {
            input_file >> array[i];
        }
        input_file.close();

        threads = new pthread_t[num_threads];

        for (int i = 8; i < 16; i++) {
            job_queue.push(i);
        }
    }

    void run_threads() {
        for (int i = 0; i < num_threads; i++) {
            pthread_create(&threads[i], NULL, execute_task, this);
        }
        for (int i = 0; i < num_threads; i++) {
            sem_wait(&done);
        }
    }

    void save_output() {
        string filename = "output_" + to_string(num_threads) + ".txt";
        ofstream output_file(filename);
        for (int i = 0; i < array_size; i++) {
            output_file << array[i] << " ";
        }
        output_file.close();
    }
};

// Bubble sort function
void bubble_sort(int *arr, int start, int end) {
    for (int i = start; i < end - 1; i++) {
        for (int j = i + 1; j < end; j++) {
            if (arr[i] > arr[j]) {
                swap(arr[i], arr[j]);
            }
        }
    }
}

// Merge function
void merge(int *arr, int start, int mid, int end) {
    vector<int> left(arr + start, arr + mid);
    vector<int> right(arr + mid, arr + end);
    
    int left_index = 0, right_index = 0;
    int current_index = start;

    while (left_index < left.size() && right_index < right.size()) {
        if (left[left_index] <= right[right_index]) {
            arr[current_index++] = left[left_index++];
        } else {
            arr[current_index++] = right[right_index++];
        }
    }

    // Copy remaining elements
    while (left_index < left.size()) {
        arr[current_index++] = left[left_index++];
    }
    while (right_index < right.size()) {
        arr[current_index++] = right[right_index++];
    }
}

// Thread function
void *execute_task(void *pool) {
    ThreadPool *p = static_cast<ThreadPool *>(pool);
    while (true) {
        sem_wait(&p->mutex);
        if (p->job_queue.empty()) {
            sem_post(&p->mutex);
            sem_post(&p->done);
            return NULL;
        }

        int job = p->job_queue.front();
        p->job_queue.pop();
        sem_post(&p->mutex);

        if (job > 7) {  // Bubble sort
            p->task_range[job].first = (job - 8) * (p->array_size / 8);
            p->task_range[job].second = (job != 15) ? (p->task_range[job].first + (p->array_size / 8)) : (p->array_size);
            bubble_sort(p->array, p->task_range[job].first, p->task_range[job].second);
        } else {  // Merge sort
            p->task_range[job].first = p->task_range[job * 2].first;
            p->task_range[job].second = p->task_range[job * 2 + 1].second;
            merge(p->array, p->task_range[job].first, p->task_range[job * 2].second, p->task_range[job].second);
        }

        sem_wait(&p->mutex);
        p->tasks_completed[job] = 1;
        if (p->tasks_completed[job + ((job & 1) ? -1 : 1)]) {
            p->job_queue.push(job >> 1);
        }
        sem_post(&p->mutex);
    }
}

// Main program
int main() {
    for (int thread = 1; thread <= 8; thread++) {
        struct timeval start_time, end_time;
        gettimeofday(&start_time, 0);

        ThreadPool *thread_pool = new ThreadPool(thread);
        thread_pool->read_input();
        thread_pool->run_threads();
        thread_pool->save_output();

        gettimeofday(&end_time, 0);
        int elapsed_sec = end_time.tv_sec - start_time.tv_sec;
        int elapsed_usec = end_time.tv_usec - start_time.tv_usec;
        cout << "worker thread #" << thread << ", elapsed " 
             << fixed << setprecision(6) << (elapsed_sec + (elapsed_usec / 1000000.0)) * 1000.0 << " ms" << endl;

        delete thread_pool;
    }

    return 0;
}
