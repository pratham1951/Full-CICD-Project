FROM python:3
RUN pip install django
COPY . .
RUN python manage.py migrate
ENTRYPOINT [ "python", "manage.py","runserver","0.0.0.0:8001" ]