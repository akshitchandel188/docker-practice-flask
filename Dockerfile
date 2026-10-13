
# 1. Use a lightweight Python base image
FROM python:3.12-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the dependency list first
COPY requirements.txt .

# 4. Install the Python dependencies inside the image
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the Flask application into the image
COPY app.py .

# 6. Document the port used by the Flask application
EXPOSE 5000

# 7. Start the Flask application when the container runs
CMD ["python", "app.py"]
