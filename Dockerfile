FROM python:3
RUN pip install django==3.2
RUN pip manage.py migrate
COPY . .
CMD [ "python","manage.py","runserver","0.0.0.0:8000" ]