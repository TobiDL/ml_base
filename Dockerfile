FROM python:3.5.3-onbuild

RUN apt-get update

RUN mkdir /data 
RUN mkdir /notebook

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

VOLUME ["/data", "/notebook"]

# for jupyter
EXPOSE 8888

CMD jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token=''
