from flask import Flask

def create_app():
    app = Flask(__name__)
    
    @app.route('/')
    def hello_world():
        return 'Hello, World from Flask on ECS!'
    
    return app

app = create_app()

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
