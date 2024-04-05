# Use a base image with the necessary dependencies
FROM python:3.11

# Set the working directory inside the container
WORKDIR /code

# Copy the requirements file to the working directory
COPY ./requirements.txt /code/requirements.txt

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the source code to the working directory
COPY . /code

# Train the model during the build phase (replace with your training command)
RUN python train.py

# Set the command to execute when the container is run
CMD ["python", "test.py"]