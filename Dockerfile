# base image
FROM python:3.11

# working directory
WORKDIR /app

# copy
COPY flask_app/ /app/
# copy all the things that is present in flask_app folder and paste it in app folder

COPY models/vectorizer.pkl /app/models/vectorizer.pkl
# copy vectorizer.pkl file from models folder and paste it inside this /app/models/

# run
RUN pip install -r requirements.txt

RUN python -m nltk.downloader stopwords wordnet

# port
EXPOSE 5000

# cmd
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
