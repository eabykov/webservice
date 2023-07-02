## Prerequisites

* Kubernetes >= 1.19

## Installing the Chart

To install chart webservice:

```bash
helm upgrade --install webservice . --atomic --create-namespace --namespace=webservice --set image.repository=$IMAGE_NAME --set image.tag=$CI_COMMIT_TAG
```

- `--install` - установить чарт если он еще не был установлен
- `.Release.Name` - переменная которую можно использовать в templates чарта, в данном случае это: webservice
- `$IMAGE_NAME:$CI_COMMIT_TAG` - полное имя образа
- `--atomic` - ждет пока все ресурсы будут созданы и при ошибке откатывает на прошлую версию
- `--create-namespace` - создаст namespace если его не существует
