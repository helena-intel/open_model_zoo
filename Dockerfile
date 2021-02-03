FROM python:3.7-slim

# For opencv
RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6

# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook && \
    pip install openvino numpy==1.19 ipywidgets pyyaml requests matplotlib voila opencv-python ipython==7.10

# create user with a home directory
ENV USER jovyan
ENV HOME /home/jovyan

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid 1000 \
    jovyan
WORKDIR $HOME


USER jovyan

COPY --chown=jovyan:jovyan demos /home/${USER}/demos
COPY --chown=jovyan:jovyan models /home/${USER}/models
COPY --chown=jovyan:jovyan tools /home/${USER}/tools
COPY --chown=jovyan:jovyan entrypoint.sh /home/${USER}
COPY --chown=jovyan:jovyan Dockerfile /home/${USER}

EXPOSE 8888

ENV LD_LIBRARY_PATH /usr/local/lib

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--TagRemovePreprocessor.remove_cell_tags","{'hide',}"]
#ENTRYPOINT ["/home/jovyan/entrypoint.sh"]

#jupyter notebook --port ${port} --ip 0.0.0.0 --no-browser --TagRemovePreprocessor.remove_cell_tags={"hide",} --NotebookApp.base_url=${base_url}
