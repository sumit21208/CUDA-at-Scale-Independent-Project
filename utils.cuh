#ifndef UTILS_CUH
#define UTILS_CUH

#include <cuda_runtime.h>

void checkCudaErrors(cudaError_t err);
void processImage(const char* imagePath);
void processSignal(const char* signalPath);

#endif
