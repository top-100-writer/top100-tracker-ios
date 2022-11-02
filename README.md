# TrackerTop100SDK IOS
TrackerTop100 обеспечивает возможность собирать и отправлять данные в Топ-100 аналитику с ios приложений.

SDK архив: [Скачать](https://github.com/top-100-writer/top100-tracker-ios-sdk/releases/download/1.0.0/TrackerTop100SDK.xcframework.zip)

[Документация](https://top-100-writer.gitbook.io/top100-documentation/ios-sdk-beta)

## Подключение
1. Установите пакет TrackerTop100SDK в свой проект.
2. Подключите пакет с помощью импорта в AppDelegate:
```
import TrackerTop100SDK
``` 
3. Инициализируйте счетчик в методе `application` класса `AppDelegate`
```
let settings = TrackerTop100Settings(projectId: <projectId>)
TrackerTop100(settings: settings)
```
## Отправка событий
Для фиксирования просмотра экрана необходимо вызвать следующий метод
```
TrackerTop100.trackPageView(className: <CLASS_NAME>, url: <URL>, title: <TITLE>)
```
где 

CLASS_NAME (обязательный) - название активности, например, "MainActivity"

URL (опциональный) - релевантный url для web страницы, например, "http://rambler.ru"

TITLE (опциональный) - название экрана


При необходимости можно отправить любое собственное событие с помощью метода
```
TrackerTop100.trackEvent(eventName: <EVENT_NAME>, eventValues: <EVENT_VALUES>)
```
где

EVENT_NAME - произвольное название события

EVENT_VALUES - произвольные данные о событии, не более 30 параметров в формате `[String, String]`
