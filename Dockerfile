FROM python:3.7.11-slim

WORKDIR /home

COPY . /home

RUN pip install -e .
RUN python -m lingx.utils.download_lang_models

CMD ["bash"]