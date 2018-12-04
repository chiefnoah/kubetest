from flask import Flask
app = Flask(__name__)

@app.route("/")
def kube():
    return "Hello Kubernetes!"

@app.route("/healthz")
def health():
    return "ok", 200
