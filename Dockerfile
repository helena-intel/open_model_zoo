FROM python:3.7
RUN pip3 install \
    jhsingle-native-proxy>=0.0.10 \
    voila \
    ipywidgets numpy matplotlib openvino pyyaml ipython==7.10 opencv_python

# create a user, since we don't want to run as root
RUN useradd -m jovyan
ENV HOME=/home/jovyan
WORKDIR $HOME
USER jovyan

COPY --chown=jovyan:jovyan entrypoint.sh /home/jovyan
COPY --chown=jovyan:jovyan Presentation.ipynb /home/jovyan
COPY --chown=jovyan:jovyan . /home/jovyan
RUN chown -R jovyan /home/jovyan

EXPOSE 8888

ENTRYPOINT ["/home/jovyan/entrypoint.sh"]

CMD ["jhsingle-native-proxy", "--destport", "8505", "voila", "/home/jovyan/demos/object_detection_demo/jupyter-python/object_detection_demo_nomo.ipynb", "{--}port={port}", "{--}no-browser", "{--}TagRemovePreprocessor.remove_cell_tags={'hide'}", "{--}Voila.base_url={base_url}/", "{--}Voila.server_url=/"]
