from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello Pragya! My DevOps mini project is running successfully."

@app.route("/about")
def about():
    return "This project uses Python, Docker, GitHub, Shell Script, Linux, and Jenkins."

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)