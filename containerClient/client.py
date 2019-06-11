import requests
import json
import docker

print('Escolha uma das seguintes opções: ')
print('1 - Armazenar dados do container. [POST]')
print('2 - Receber dados do servidor.[GET]')
print('0 - Sair da aplicação.')
print('\n')

x = input()

if x == 1:
    cli = docker.from_env()
    print(cli)
    stats = cli.stats('containerWorker')
    print(stats)
    url = 'http://192.168.50.2:5000/POST'
    for stat in stats:
        # TODO
        payload = {
            'Horario da Requisiçao': stat,
            'Nome do Container': stat,
            'Id do Container': stat,
            'Id da Imagem': stat,
            'Uso de CPU': stat,
            'Uso de Memoria': stat
        }
    headers = {'content-type': 'application/json'}
    r = requests.post(url, data=json.dumps(payload), headers=headers)

if x == 2:
    url = 'http://192.168.50.3:5000/GET'
    r = requests.get(url)
    print(r)

if x == 0:
    exit()
