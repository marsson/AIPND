FROM python:3.6.3

WORKDIR /src
# By copying over requirements first, we make sure that Docker will cache
# our installed requirements rather than reinstall them on every build
COPY requirements.txt /src/requirements.txt
RUN pip install -r /src/requirements.txt
