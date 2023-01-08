from flask import Flask

app = Flask(__name__)
app.secretKey = "my_random_secret_keyy"

@app.route("/")
def hello_world():
    return "<p>Hi, It's a CI/CD Demo... Voila!</p>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True)