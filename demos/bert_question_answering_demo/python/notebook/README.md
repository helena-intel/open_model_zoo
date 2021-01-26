# BERT Question Answering Jupyter\* Demo

This README describes the Question Answering demo notebook that uses a Squad-tuned BERT model for inference.

## Run the notebook in the cloud

Try the notebook without installing anything: [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/helena-intel/open_model_zoo/bert-qa-notebook?filepath=demos%2Fbert_question_answering_demo%2Fpython%2Fbert_question_answering_demo.ipynb)


## Run the notebook on your own computer

To run the notebook on your own computer, you need to download Open Model Zoo and install Python, JupyterLab and OpenVINO.

* Open a terminal (`cmd.exe` on Windows, `Terminal` on Linux or MacOS)
* Clone the Open Model Zoo repository: `git clone https://github.com/openvinotoolkit/open_model_zoo.git` (You can download `git` from https://git-scm.com)
* Download and install Python 3.7 from https://www.python.org/downloads/release/python-379/
* Create and activate a virtual environment. See https://docs.python.org/3.7/tutorial/venv.html
* Go to the `open_model_zoo` directory that contains this README and install OpenVINO and the Model Downloader requirements with `pip install openvino pyyaml requests`
* Install Jupyter with `pip install jupyterlab`
* Run the notebook with `jupyter lab bert_question_answering_demo.ipynb`

## See Also

* [Using Open Model Zoo demos](../../../README.md)
* [Model Optimizer](https://docs.openvinotoolkit.org/latest/_docs_MO_DG_Deep_Learning_Model_Optimizer_DevGuide.html)
* [Model Downloader](../../../../tools/downloader/README.md)
* [Benchmark C++ Sample](https://docs.openvinotoolkit.org/latest/_inference_engine_samples_benchmark_app_README.html)
