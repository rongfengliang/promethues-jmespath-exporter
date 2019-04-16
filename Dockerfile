FROM python:2.7.13-alpine

COPY app /opt/prometheus-jmespath-exporter

RUN pip install -r /opt/prometheus-jmespath-exporter/requirements.txt

EXPOSE 9158

ENTRYPOINT ["python", "/opt/prometheus-jmespath-exporter/exporter.py"]
