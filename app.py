from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route("/webhook/twitter", methods=["POST"])
def manejador():
    if request.method == "POST":
        print(request.get_json())