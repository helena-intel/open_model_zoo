# Object Detection Async Demo

This demo showcases Object Detection on Open Model Zoo models with Async API.

Async API usage can improve the overall frame-rate of the application, because rather than wait for inference to complete, the app can continue doing things on the host, while accelerator is busy.

Other demo objectives are:

* Video as input support via OpenCV\*
* Visualization of the resulting bounding boxes
* Comparison of different Open Model Zoo models

See the [Python Object Detection Async Demo](../python/) for more details about the Async API, and the [Optimization Guide](https://docs.openvinotoolkit.org/latest/_docs_optimization_guide_dldt_optimization_guide.html) for more information on optimizing models.


## Run this demo notebook on Binder, without installing anything

Click on the *launch binder* button to try this notebook in the cloud. It allows you to interactively try this demo. Note that Binder is a free service and that resources are limited. To get better performance, download the notebook to your computer and run it locally. 

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/helena-intel/open_model_zoo/detection-async-notebook?filepath=demos%2Fobject_detection_demo%2Fjupyter-python%2Fobject_detection_demo_mo.ipynb)


## Run this demo notebook locally

1. Clone this repository to your computer with `git`, or download the repository from [this link](https://github.com/helena-intel/open_model_zoo/archive/detection-async-notebook.zip) and unzip it.

2. Install Python 

    This notebook has been tested on Linux (Ubuntu 20.04) and Windows, with Python 3.7.9. If you have not installed Python yet, download and install it from https://www.python.org/downloads/release/python-379/. Choose a 64-bit version. If you are on Windows, it is recommended to select the `Add Python to your PATH` option during installation.

3. Create a virtual environment with the required Python packages 
   - Open a terminal and go to the demo director (the directory that contains this README.)
     - On Linux or MacOS, open Terminal. On Windows, open a Command Prompt (type `cmd` in the search Window in the task bar)
     - Use the `cd` command to go to the correct directory (tip: pressing the Tab key auto-expands the filenames)
   - In the demo directory, type the following commands:
       - `python -m venv omz_venv`
       - `.\omz_venv\Scripts\activate` (Windows) or `source omz_venv/bin/activate` (Linux)
       - `pip install -r requirements.txt`

4. Run Jupyter Lab with `jupyter lab`. Click on the notebook at the left.


### Optional

This demo works with models in OpenVINO IR format. Models from the Open Model Zoo that are in the intel subdirectory are already in this format. By default, the notebook only uses the models that are already converted. Models in the public subdirectory need to be converted to IR format with the Model Optimizer. This is supported in the notebook by setting `CONVERT_MODELS` to `True`. The model optimizer needs to be installed and configured separately. Follow the installation instructions at https://docs.openvinotoolkit.org/2021.2/installation_guides.html, including the steps under *Configure the Model Optimizer*. 


