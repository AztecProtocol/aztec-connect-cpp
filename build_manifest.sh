#!/bin/bash
# Source this file to define the PROJECTS variable.
# PROJECT elements have structure PROJECT:WORKING_DIR:DOCKERFILE:REPO.
#
# TODO: Generate this from build_manifest.json

# Commenting out a few projects, as the main use case is now to build the images needed to run end-to-end tests.
# If wanting to just see if docker images actually build, you can temporarily uncomment required projects.
PROJECTS=(
  aztec-connect-cpp-wasm:./:./dockerfiles/Dockerfile.wasm-linux-clang:aztec-connect-cpp-wasm-linux-clang
  aztec-connect-cpp-x86_64-clang:./:./dockerfiles/Dockerfile.x86_64-linux-clang:aztec-connect-cpp-x86_64-linux-clang
  aztec-connect-cpp-x86_64-clang-assert:./:./dockerfiles/Dockerfile.x86_64-linux-clang-assert:aztec-connect-cpp-x86_64-linux-clang-assert
  aztec-connect-cpp-x86_64-gcc:./:./dockerfiles/Dockerfile.x86_64-linux-gcc:aztec-connect-cpp-x86_64-linux-gcc
)
