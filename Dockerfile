FROM kaggle/python-gpu-build
ENV NVIDIA_VISIBLE_DEVICES all
ENV LD_LIBRARY_PATH=/usr/local/cuda/lib64
EXPOSE 8080
RUN mkdir -p /kaggle/working
WORKDIR /kaggle/working
CMD jupyter-lab --no-browser --port=8080 --ip=0.0.0.0 --allow-root --NotebookApp.token=''