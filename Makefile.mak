
### Step 5: Makefile

Create a `Makefile` to build the project.

```makefile
NVCC = nvcc
CXXFLAGS = -I./include
LDFLAGS = 

SRCS = src/main.cu src/utils.cu
OBJS = $(SRCS:.cu=.o)
EXEC = cuda_signal_processing

all: $(EXEC)

$(EXEC): $(OBJS)
	$(NVCC) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

%.o: %.cu
	$(NVCC) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(EXEC)
