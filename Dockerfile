FROM python:3.9-slim-bullseye

COPY . .
RUN pip install --no-cache-dir poetry

RUN python -m poetry export -f requirements.txt --output requirements.txt

RUN pip install -r ./requirements.txt

ENTRYPOINT ["python", "src/app.py"]