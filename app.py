from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/", methods=["GET"])
def magicorn():
    return jsonify(msg="Docker Case Magicorn")

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)
