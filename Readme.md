### Запуск создания контейнеров:

    ansible-playbook -i hosts.ini nodex.yml
______

### Получить ip контейнера:

    docker inspect   -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' node0
