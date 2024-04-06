FROM python:3.11

# Set the working directory inside the container
WORKDIR /code

# Copy the requirements file to the working directory
COPY ./requirements.txt /code/requirements.txt

# Upgrade PIP 
RUN pip install --upgrade pip

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the source code to the working directory
COPY . /code

# Train the model
RUN python train.py

# run the test script
CMD ["python", "test.py"]