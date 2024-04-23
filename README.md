# Windows Explorer Tweak
Скрипт для поднятия на уровень вверх в проводнике Windows по двойному клику.

Это модификация скрипта, разработанного пользователем **teadrinker** с форума [autohotkey.com](https://www.autohotkey.com/).

## Особенности
- **Действие:** При двойном клике по пустому пространству в проводнике поднимает пользователя на уровень вверх.
- **Проблема:** При случайном тройном клике скрипт срабатывал по ошибке.
- **Решение:** Добавлена проверка времени между кликами для предотвращения ложных срабатываний.

## Использование
Скомпилированная версия скрипта доступна в формате `.exe`, можно добавить его в автозагрузку по пути:
```C:\Users\ИМЯ_ПОЛЬЗОВАТЕЛЯ\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup```

[Скачать EXE](https://github.com/HuxyDane/windows-explorer-script/releases/download/1/explorer-tweak.exe)

## Для недоверчивых
Вы можете скомпилировать скрипт самостоятельно.

[Как скомпилировать?](https://github.com/HuxyDane/windows-explorer-script/blob/1b16c04fe3eaff99ff5743c253e13ddc7260c983/как%20скомпилировать%20код%20в%20ahk)

[Открытый код](https://github.com/HuxyDane/windows-explorer-script/blob/1b16c04fe3eaff99ff5743c253e13ddc7260c983/explorer-tweak.ahk)

## Протестировано
Windows 11
Windows 10
