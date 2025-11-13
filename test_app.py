import pytest
from app import app as flask_app

@pytest.fixture
def client():
    flask_app.testing = True
    return flask_app.test_client()

def test_root(client):
    resp = client.get("/")
    assert resp.status_code == 200
    json_data = resp.get_json()
    assert json_data["message"] == "Hello from Flask in Docker!"
