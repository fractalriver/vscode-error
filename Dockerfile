# Sample Dockerfile 1.1
# Created by Roberto Moctezuma
# Date: 4/19/2021
# (c) Fractal River, LLC

FROM python:3.6-slim

# Set the working directory to /app
WORKDIR /app

# Install pandas and numpy
COPY requirements.txt /app
RUN pip install -r /app/requirements.txt 

# Copy the code files and shell script to run them
COPY sample.py /app
COPY bot.sh /app

# Run the shell script when the container launches
CMD ["/bin/bash" , "bot.sh"]
