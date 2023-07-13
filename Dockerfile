FROM python:3.9



WORKDIR /app

<<<<<<< HEAD


COPY ./requirements.txt /app/requirements.txt



RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt



COPY . /app


=======
COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY . /app
>>>>>>> a638b6b43c9ce926b025dbf0edc8bbbb468a1dda

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
