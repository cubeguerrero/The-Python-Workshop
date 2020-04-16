FROM continuumio/anaconda3:2020.02-alpine

RUN /opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks

WORKDIR /code
COPY . .

EXPOSE 8888
CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser"]
