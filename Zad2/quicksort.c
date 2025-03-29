#include <stdio.h>
#include <stdlib.h>
#include <time.h>
void quicksort() {
    int array[] = {5, 7, 1, 4, 10, 2, 6, 9, 3, 8};
    int size = sizeof(array) / sizeof(array[0]);

    
    printf("Tablica przed sortowaniem:\n");
    for (int i = 0; i < size; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");

    // Algorytm QuickSort
    void sort(int* arr, int left, int right) {
        if (left >= right) return;
        int pivot = arr[right];
        int i = left - 1;
        for (int j = left; j < right; j++) {
            if (arr[j] < pivot) {
                i++;
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
        i++;
        arr[right] = arr[i];
        arr[i] = pivot;

        sort(arr, left, i - 1);
        sort(arr, i + 1, right);
    }

    sort(array, 0, size - 1);

    printf("Tablica po sortowaniu:\n");
    for (int i = 0; i < size; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");
}
