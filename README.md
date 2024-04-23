# windows-explorer-tweek
Скрипт для поднятия вверх в проводнике Windows по даблклику

Это модификация скрипта, пользователя **teadrinker** с форума https://www.autohotkey.com/

**Что делает?**  При двойном клике по пустому пространству в проводнике поднимает на уровень вверх.

**Проблема:** было так, что при случайном тройном клике скрипт срабатывал по ошибке. 
**Решение:** добавил контроль времени между кликами, чтобы избежать ложных срабатываний.

**Как использовать?** Скомпилировал скрипт в EXE для удобства — его можно просто кинуть в папку автозагрузки:
```C:\Users\ИМЯ_ПОЛЬЗОВАТЕЛЯ\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup```
[Скачать EXE](https://github.com/HuxyDane/windows-explorer-script/releases/download/1/exolorer-tweak.exe)

Можно скомпилировать самостоятельно [(но как?)](https://github.com/HuxyDane/windows-explorer-script/blob/1b16c04fe3eaff99ff5743c253e13ddc7260c983/%D0%BA%D0%B0%D0%BA%20%D1%81%D0%BA%D0%BE%D0%BC%D0%BF%D0%B8%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%20%D0%BA%D0%BE%D0%B4%20%D0%B2%20ahk) или вообще не компилировать и закинуть файл ahk в автозагрузки, если у вас установлен ahk

[Открытый код](https://github.com/HuxyDane/windows-explorer-script/blob/1b16c04fe3eaff99ff5743c253e13ddc7260c983/explorer-tweak.ahk)

