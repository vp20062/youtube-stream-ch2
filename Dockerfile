FROM ubuntu:22.04

RUN apt-get update && apt-get install -y ffmpeg bash && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

RUN chmod +x run.sh
CMD ["./run.sh"]
