# app/Dockerfile
FROM python:3.9-slim

# Install CloudQuery CLI
RUN curl -L https://raw.githubusercontent.com/cloudquery/cloudquery-cli/main/install.sh | sh

# Create app directory
WORKDIR /app

# Copy app files
COPY . .

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose port 8501 for Streamlit
EXPOSE 8501

# Start the app and db
CMD python3 scripts/load-docker-db.py
CMD ["streamlit", "run", "/app/app.py", "--server.port=8501"]