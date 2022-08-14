#!/usr/bin/env bash
# entrar na pasta web 
cd web/
#rodar o arquivo manage.py com o migrate esse executa comandos SQL no arquivo de banco de dados
python manage.py migrate
# esse collectstatic chama o método post_process() do STATICFILES_STORAGE após cada execução e passa uma lista de caminhos que foram encontrados pelo comando de gerenciamento
python manage.py collectstatic --noinput
# mando a ferramenta rodar o server
python manage.py runserver 0.0.0.0:8001