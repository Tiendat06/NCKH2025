from flask import Flask
import os
from route import route
from dotenv import load_dotenv

if __name__ == '__main__':
    load_dotenv()
    app = Flask(__name__)
    app.config['SECRET_KEY'] = os.getenv('SECRET_KEY')
    route(app)
    app.run(debug=True)

