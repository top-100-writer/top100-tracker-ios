# TrackerTop100SDK iOS

[![Swift](https://img.shields.io/badge/Swift-5.10-orange?style=flat-square)](https://img.shields.io/badge/Swift-5.10-Orange?style=flat-square)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/TrackerTop100SDK?style=flat-square)](https://img.shields.io/cocoapods/v/TrackerTop100SDK)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat-square)](https://github.com/Carthage/Carthage)
[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)

TrackerTop100 обеспечивает возможность собирать и отправлять данные в Топ-100 аналитику с iOS приложений.

SDK архив: [Скачать](https://github.com/top-100-writer/top100-tracker-ios-sdk/releases/download/1.13.0/TrackerTop100SDK.xcframework.zip)

## Подключение
1. Установите пакет TrackerTop100SDK в свой проект.
2. Подключите пакет с помощью импорта в AppDelegate:
```
import TrackerTop100SDK
``` 
3. Инициализация счётчика производится при запуске приложения одним из способов:
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

[Документация](https://ads.sber.ru/help/ios-sdk)
