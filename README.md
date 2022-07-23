# shopper-db
Microservice Architecture Course 2022-2023 / PostgreSQL database for shopper application

#### Переменные окружения

Для конфигурирования базы данных необходимо в корне проекта создать файл `.env` следующего вида:

```
POSTGRES_DB=postgres
POSTGRES_USER=admin
POSTGRES_PASSWORD=123
```

#### Параметры k8s

```
namespace: shopper-db
```

#### Настройка в кластере k8s

Для создания рабочей нагрузки в кластере необходимо из директории `k8s` выполнить скрипт `./k8s.sh up`. Для удаления неймспейса и всех его объектов необходимо выполнить `./k8s.sh down`.

#### Подключить к БД в кластере

```shell
kubectl exec -it <pod_name> -- psql -h localhost -U admin -p 5432 -d postgres
```
