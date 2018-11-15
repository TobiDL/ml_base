FROM python:3.5.3-onbuild

RUN apt-get update

RUN mkdir /data RUN mkdir /notebooks
RUN mkdir /tmp/tflearn_logs

RUN pip install jupyter


VOLUME ["/data", "/notebooks", '/tmp/tflearn_logs']

# for jupyter
EXPOSE 8888

CMD jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token=''
