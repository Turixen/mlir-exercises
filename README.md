# MLIR and Sparse Tensor Dialect Project

## Table of Contents
- [Project Overview](#project-overview)
- [Project Steps](#project-steps)
  - [Step 1: Introduction to MLIR](#step-1-introduction-to-mlir)
  - [Step 2: Understanding Sparse Tensor Dialect](#step-2-understanding-sparse-tensor-dialect)
  - [Step 3: Setting Up the Development Environment](#step-3-setting-up-the-development-environment)
  - [Step 4: Creating and Running MLIR Passes](#step-4-creating-and-running-mlir-passes)
  - [Step 5: Implementing Sparse Tensor Operations](#step-5-implementing-sparse-tensor-operations)
  - [Step 6: Performance Evaluation](#step-6-performance-evaluation)
- [Additional Resources](#additional-resources)
- [Contributing](#contributing)
- [License](#license)

## Project Overview
This project is a detailed study of MLIR (Multi-Level Intermediate Representation) and the Sparse Tensor dialect. The aim is to explore and learn MLIR, implementing tensor multiplication (matmul) operations using both dense and sparse tensors, and optimize these operations. The project culminates in generating assembly code without runtime calls to MLIR and making it run on Risc-V in MonteCimone Cluster.

## Project Steps

### Step 1: Introduction to MLIR
- **Objective:** Gain an understanding of MLIR, its design principles, and its role in the compiler infrastructure.
- **Resources:**
  - [MLIR Documentation](https://mlir.llvm.org/docs/)
  - [LLVM Repository](https://github.com/llvm/llvm-project/tree/main/mlir)
  - [My Introduction to MLIR](docs/introduction_to_mlir.md)

### Step 2: Understanding Sparse Tensor Dialect
- **Objective:** Learn about the Sparse Tensor dialect in MLIR, its purpose, and how it handles sparse tensor operations.
- **Resources:**
  - [Sparse Tensor Dialect Documentation](https://mlir.llvm.org/docs/Dialects/SparseTensor/)
  - [My Sparse Tensor Dialect Overview](docs/sparse_tensor_overview.md)

### Step 3: Setting Up the Development Environment
- **Objective:** Set up the development environment to work with MLIR and the Sparse Tensor dialect.
- **Instructions:** Follow the steps in `docs/environment_setup.md`.

### Step 4: Creating and Running MLIR Passes
- **Objective:** Learn how to create and run MLIR passes to transform and optimize code.
- **Instructions:** Detailed steps are provided in `docs/creating_mlir_passes.md`.

### Step 5: Implementing Sparse Tensor Operations
- **Objective:** Implement various operations using the Sparse Tensor dialect and test their functionality.
- **Instructions:** Follow the examples and guidelines in `docs/implementing_sparse_operations.md`.

### Step 6: Performance Evaluation
- **Objective:** Evaluate the performance of the implemented sparse tensor operations and compare them with dense tensor operations.
- **Instructions:** Steps for performance evaluation can be found in `docs/performance_evaluation.md`.

## Additional Resources
- [LLVM Project](https://llvm.org/)
- [MLIR GitHub Repository](https://github.com/llvm/llvm-project/tree/main/mlir)
- [Sparse Tensor GitHub Issues](https://github.com/llvm/llvm-project/issues?q=is%3Aissue+is%3Aopen+sparse+tensor)

---