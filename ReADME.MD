# Dockerized Flask App

This repository contains a tiny Flask app and a Dockerfile so you can build and run it locally or in CI.

Files included:
- `app.py` - Minimal Flask application (GET / returns JSON)
- `Dockerfile` - Builds a small image using python:3.11-slim
- `REQUIREMENTS.TXT` - Python dependencies
- `test_app.py` - A small pytest test
- `.github/workflows/cicd.yml` - GitHub Actions workflow to run tests and build the image

Quick start (local):

1. Create and activate a virtual environment (optional):

\`\`\`bash
python -m venv venv
source venv/bin/activate
\`\`\`

2. Install dependencies:

\`\`\`bash
pip install -r REQUIREMENTS.TXT
\`\`\`

3. Run the app locally:

\`\`\`bash
python app.py
\`\`\`

4. Build the Docker image:

\`\`\`bash
docker build -t my-flask-app:latest .
\`\`\`

5. Run the Docker container:

\`\`\`bash
docker run -p 5000:5000 my-flask-app:latest
\`\`\`

Run tests:

\`\`\`bash
pytest -q
\`\`\`
