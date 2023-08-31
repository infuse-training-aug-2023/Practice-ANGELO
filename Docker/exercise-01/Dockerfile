FROM python:3

WORKDIR  /app

COPY . .

RUN pip install -r requirements.txt

ENV EXEC=true

CMD ["python", "exercise01.py", "3","3"]
