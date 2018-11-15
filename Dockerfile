FROM python:3.5.3-onbuild

RUN apt-get update

RUN mkdir /data RUN mkdir /notebooks
RUN mkdir /tmp/tflearn_logs

# Dependencies
RUN pip --no-cache-dir install \
        Pillow \
        numpy \
        jupyter \
        matplotlib \
        pandas \
        scipy \
        sklearn \
        tensorflow\
        keras

VOLUME ["/data", "/notebooks", '/tmp/tflearn_logs']

# for jupyter
EXPOSE 8888

CMD jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token=''
