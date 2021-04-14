FROM python:3.9

WORKDIR /usr/src/app

RUN pip install discord.py[voice] youtube_dl python-dotenv ffmpeg

COPY . .
RUN chmod +x main.py

CMD [ "python", "main.py" ]