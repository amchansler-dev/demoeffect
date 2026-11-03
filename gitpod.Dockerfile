# Gitpod Classic game development workspace
# Includes Node.js, Python, C/C++ and common development tools.
FROM gitpod/workspace-full:latest

USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential cmake git-lfs pkg-config \
    python3-venv python3-pip \
    libsdl2-dev libgl1-mesa-dev libglfw3-dev libopenal-dev \
    && rm -rf /var/lib/apt/lists/*
USER gitpod

# Gitpod checks out your repository into /workspace automatically.
EXPOSE 5173 8000
