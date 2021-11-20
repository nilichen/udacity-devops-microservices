FROM continuumio/anaconda3:2021.05
## Step 1:
# Create a working directory
WORKDIR /app
## Step 2:
# Copy source code to working directory
COPY . /app/
## Step 3:
# Install packages from requirements.txt
RUN conda create --name venv python=3.6 --yes --file requirements.txt
## Step 4:
# Expose port 80
EXPOSE 80
## Step 5:
# Run app.py at container launch
CMD ["conda", "run", "--no-capture-output", "-n", "venv", "python", "app.py"]
