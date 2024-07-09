#include "utils.cuh"
#include <iostream>

int main(int argc, char** argv) {
    if (argc != 3) {
        std::cerr << "Usage: " << argv[0] << " <image|signal> <path>" << std::endl;
        return EXIT_FAILURE;
    }

    std::string type = argv[1];
    const char* path = argv[2];

    if (type == "image") {
        processImage(path);
    } else if (type == "signal") {
        processSignal(path);
    } else {
        std::cerr << "Invalid type. Use 'image' or 'signal'." << std::endl;
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
