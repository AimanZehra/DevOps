FROM ubuntu

# Setiing the working diretcory in the image
WORKDIR /app

# Copying all the files to the working directory folder
COPY . /app

# Installing the necessary Packages
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirements.txt && \
    python manage.py migrate

# Run command to start the application
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]