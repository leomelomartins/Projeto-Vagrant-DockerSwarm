from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/POST')
def GET():
    content = request.json
    file = open('logs.txt', 'w')

    keys = content.keys()
    for key in keys:
        aux = key + '->' + content[key] + ' '
        file.write(aux)
    file.write('\n')

    data = {'message': 'Dados do container armazenados!'}
    return jsonify(data), 201


@app.route('/GET')
def GET():
    file = open('logs.txt')
    return file.read(), 200


if __name__ == '__main__':
    app.run()
