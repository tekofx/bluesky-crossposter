# Use latest alpine-derived Python base image
FROM python:3.12-alpine

# Install requirements
COPY . .
RUN pip install --no-cache-dir -r requirements.txt && \
    chmod +rxxx ./run.sh

CMD sh run.sh
