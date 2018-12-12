from flask import Flask
app = Flask(__name__)

@app.route("/")
def kube():
    return "Hello Kubernetes!\n"

@app.route("/healthz")
def health():
    return "ok\n", 200
