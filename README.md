# TrackerTop100SDK iOS
TrackerTop100 обеспечивает возможность собирать и отправлять данные в Топ-100 аналитику с iOS приложений.

SDK архив: [Скачать](https://github.com/top-100-writer/top100-tracker-ios-sdk/releases/download/1.11.1/TrackerTop100SDK.xcframework.zip)

[Документация](https://stat-sberads.gitbook.io/documentation/nastroika-sbora-i-otpravki-dannykh/ios-sdk)

## Подключение
1. Установите пакет TrackerTop100SDK в свой проект.
2. Подключите пакет с помощью импорта в AppDelegate:
```
import TrackerTop100SDK
``` 
3. Инициализация счётчика произведена в методе `application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool` класса `AppDelegate` одним из способов:
```
let settings = TrackerTop100Settings(projectId: "123456")!
TrackerTop100.activate(settings: settings.build())
```
или
```
let settings1 = TrackerTop100Settings(projectId: "123456")!
let settings2 = TrackerTop100Settings(projectId: "789000")!
TrackerTop100.activate(multipleSettings: [settings1.build(), settings2.build()])
```

## Отправка событий

### Событие о просмотре экрана
Для фиксирования просмотра экрана необходимо вызвать следующий метод
```
TrackerTop100.trackPageView(className: String, url: String?, title: String?)
```
,где 

- className (обязательный) - название активности (например, "MainActivity")
- url (опциональный) - строковое представление релевантного URL для web-страницы (например, "https://www.rambler.ru")
- title (опциональный) - название экрана

### Собственное событие
При необходимости можно отправить любое собственное событие с помощью метода
```
TrackerTop100.trackEvent(eventName: String, eventValues: [String: String]?)
```
,где

- eventName (обязательный) - произвольное название события
- eventValues (опциональный) - произвольные данные о событии, не более 30 параметров

### Электронная коммерция

```
TrackerTop100.trackEcomm(eventName: String>, ecommParams: TrackerTop100ECommerce?)
```
,где

- eventName (обязательный) - произвольное название действия с ecom данными
- ecommParams (опциональный) - параметры e-commerce события

### Deeplink

```
TrackerTop100.trackDeeplink(link: String)
```
,где

- link (обязательный) - строковое значение deeplink

### RecSys-события

```
TrackerTop100.trackRecSysEvent(eventName: String, meta: [String: String]?, url: String?)
```
,где

- eventName (обязательный) - название события
- meta (опциональный) - произвольные данные о событии
- url (опциональный) - релевантный URL экрана

## Получение данных

### Web-view данные для JS-счётчика
Метод возвращает данные для передачи в web view для связи событий отправляемых из SDK и JS-счётчика
```
TrackerTop100.getData() -> String
```

### Web-view скрипт для JS-счётчика
Метод возвращает скрипт для передачи данных в web-view для связи событий отправляемых из SDK и JS-счётчика
```
TrackerTop100.getDataToWebView() -> String
```

## Прочие методы

### (Де)авторизация пользователя
Метод для передачи идентификатора авторизованного пользователя.
```
TrackerTop100.syncUserId(_ authUserId: String?, projectId: String)
```
,где

- authUserId (обязательный) - идентификатор пользователя или `null`, если пользователь разлогинился
- projectId (обязательный) - идентификатор проекта

### Обновление параметров счётчика
```
TrackerTop100.updateOptions(_ params: TrackerTop100Settings.Params)
```
,где

- params (обязательный) - новые значения параметров

### Debug-режим
Метод для переключения debug-режима счётчика
```
TrackerTop100.setupDebugActive(_ isDebugActive: Bool)
```
,где

- isDebugActive (обязательный) - Флаг (де)активации debug-режима счётчика.