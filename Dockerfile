FROM python:3.7-slim

# For opencv
RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6

# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache jupyterlab voila opencv-python-headless matplotlib ipython==7.10 ipywidgets tornado==6.1 jedi==0.17.0 openvino requests pyyaml numpy==1.19

# create user with a home directory
ENV USER jovyan
ENV HOME /home/jovyan

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid 1000 \
    jovyan
WORKDIR $HOME

COPY --chown=jovyan:jovyan demos/object_detection_demo/jupyter-python /home/${USER}/jupyter/demos/object_detection_demo
COPY --chown=jovyan:jovyan demos/bert_question_answering_demo/jupyter-python /home/${USER}/jupyter/demos/bert_question_answering_demo
COPY --chown=jovyan:jovyan demos/bert_question_answering_embedding_demo/jupyter-python /home/${USER}/jupyter/demos/bert_question_answering_embedding_demo
COPY --chown=jovyan:jovyan demos/common/python /home/${USER}/demos/common/python
COPY --chown=jovyan:jovyan tools /home/${USER}/tools
COPY --chown=jovyan:jovyan data /home/${USER}/data
COPY --chown=jovyan:jovyan models /home/${USER}/models
#COPY --chown=jovyan:jovyan . /home/${USER}/

USER jovyan

COPY --chown=jovyan:jovyan Dockerfile /home/${USER}


EXPOSE 8888

ENV LD_LIBRARY_PATH /usr/local/lib

CMD ["jupyter", "lab", "--ip", "0.0.0.0", "--LabApp.token", ""]

WORKDIR /home/jovyan/jupyter/demos/
