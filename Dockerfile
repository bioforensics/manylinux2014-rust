FROM quay.io/pypa/manylinux2014_x86_64

# Install Rust toolchain
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y \
    && source $HOME/.cargo/env \
    && rustup default stable

# Make sure Rust is in the PATH
ENV PATH=/root/.cargo/bin:$PATH

# Verify installation
RUN rustc --version && cargo --version

