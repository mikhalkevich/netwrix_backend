<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

## Backend for netwrix
Это бэкенд API для тестового задания.

## Установка
- <code>git clone https://github.com/mikhalkevich/netwrix_backend</code>
- <code>cd netwrix_backend</code>
- <code>composer install</code>
- Далее необходимо по примеру .env.example создать файл .env, и в нём прописать переменные подключения базы данных. 
Дамп базы находится в файле netwrix.sql
- <code>php artisan serve</code>

## Пояснения для фронтенда
- <code>get {{url}}/api/partner/all </code> - вывод всех компаний
- <code> {{url}}/api/partner/all?company=IT&address=8223 </code> - для вывода компаний по условию используется тот же запрос, что и для вывода всех, но с добавлением параметров запроса address (для фильтра по адресу) и company (для фильтра по названию компании)
- <code> {{url}}/api/countries </code> - для вывода списка всех стран
- <code> {{url}}/api/states/{{country_id}}</code> - для вывода списка всех states выбранной страны, где {{country_id}} - это id страны
- {{url}} = http://localhost:8000 . Протестировать приложение без фронтенда можно с помощью Postmen. 
- Все запросы реализованы в Postmen и станут доступны после обмена приглашениями.

## Пояснения по коду
- Были созданы маршруты и соответствующие контроллеры PartnerController, CountryController, StateController. Модели: Country, State, Partner с нужными связями. К модели Partner подключен фильтр PartnerFilter. Ответы в формате JSON реализованы с помощью ресурсов CountryResource, StateResource и PartnerResource.
- Также реализована token-авторизация. И авторизованный пользователь имеет доступ к CRUD-запросам из ресурсного контроллера PartnerController.
- В процессе разработки фронтенда, возможны доработки на стороне бэкенда. Но в целом, такая структура бэкенда универсальна и оптимальна для дальнейшего расширения.
