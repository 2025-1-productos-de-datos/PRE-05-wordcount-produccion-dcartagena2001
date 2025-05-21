#
# docker build -t wordcount-app .

# Linux - Unix
# docker run --rm -v "$PWD/data/input:/data/input/" -v "$PWD/data/output:/data/output/" wordcount-app

# Windows
#docker run --rm -v "%CD%\data\input:/data/input" -v "%CD%\data\output:/data/output" wordcount-app
#
FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install -e .
# python3 -m homework data/input data/output
CMD ["python", "-m", "homework", "/data/input/", "/data/output/"]
