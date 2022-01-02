FROM jupyter/scipy-notebook
WORKDIR /home/jovyan/repo
USER root
# Update our repository listings, install git
RUN sudo apt update && sudo apt -y upgrade && sudo apt -y install git
# The requirements file has qiskit[visualization] as a dependency, it should instlal qiskit itself to fullfill dependency for visualization
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8888