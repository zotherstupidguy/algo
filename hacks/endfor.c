void selectionSort(int list[], int lo, int hi) {
//sort list[lo] to list[hi] in ascending order
int getSmallest(int[], int, int);
void swap(int[], int, int);
for (int h = lo; h < hi; h++) {
int s = getSmallest(list, h, hi);
swap(list, h, s);
}
}

