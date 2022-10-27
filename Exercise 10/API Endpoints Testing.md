# Testing my API end points to see if the return successfully.

## Note
For my endpoint testing, I used both Postman and my Browser.
---

### 1. Run the database migration

#### a. Run the DB Migration

```
php artisan migrate --seed
```

<img width="940" alt="26 php artisan migrate seed" src="https://user-images.githubusercontent.com/83463641/198156564-ca5e14f4-68c5-4ab3-94da-13a39e61546b.PNG">

---
### 2. Test the API endpoints

#### List out the endpoints

```
php artisan route:list
```
* 28 Routes available

<img width="942" alt="31 End Point testing - php artisan route list" src="https://user-images.githubusercontent.com/83463641/198157127-d1602b8f-5f4e-42c0-8ea1-4ed6d4fb75fd.PNG">

### 3. List of routes

  GET|HEAD  / ............................................................................................................................... 
  POST      _ignition/execute-solution ........................ ignition.executeSolution › Spatie\LaravelIgnition › ExecuteSolutionController
  GET|HEAD  _ignition/health-check .................................... ignition.healthCheck › Spatie\LaravelIgnition › HealthCheckController
  POST      _ignition/update-config ................................. ignition.updateConfig › Spatie\LaravelIgnition › UpdateConfigController
  POST      api/articles ........................................................ api.articles.create › Api\Articles\ArticleController@create
  GET|HEAD  api/articles ............................................................ api.articles.list › Api\Articles\ArticleController@list
  GET|HEAD  api/articles/feed ....................................................... api.articles.feed › Api\Articles\ArticleController@feed
  PUT       api/articles/{slug} ................................................. api.articles.update › Api\Articles\ArticleController@update
  DELETE    api/articles/{slug} ................................................. api.articles.delete › Api\Articles\ArticleController@delete
  GET|HEAD  api/articles/{slug} ...................................................... api.articles.get › Api\Articles\ArticleController@show
  POST      api/articles/{slug}/comments .............................. api.articles.comments.create › Api\Articles\CommentsController@create
  GET|HEAD  api/articles/{slug}/comments ................................... api.articles.comments.get › Api\Articles\CommentsController@list
  DELETE    api/articles/{slug}/comments/{id} ......................... api.articles.comments.delete › Api\Articles\CommentsController@delete
  POST      api/articles/{slug}/favorite .................................. api.articles.favorites.add › Api\Articles\FavoritesController@add
  DELETE    api/articles/{slug}/favorite ............................ api.articles.favorites.remove › Api\Articles\FavoritesController@remove
  GET|HEAD  api/documentation ............................................... l5-swagger.default.api › L5Swagger\Http › SwaggerController@api
  GET|HEAD  api/oauth2-callback ...................... l5-swagger.default.oauth2_callback › L5Swagger\Http › SwaggerController@oauth2Callback
  GET|HEAD  api/profiles/{username} ........................................................... api.profiles.get › Api\ProfileController@show
  POST      api/profiles/{username}/follow ............................................... api.profiles.follow › Api\ProfileController@follow
  DELETE    api/profiles/{username}/follow ........................................... api.profiles.unfollow › Api\ProfileController@unfollow
  GET|HEAD  api/tags ................................................................................ api.tags.list › Api\TagsController@list
  GET|HEAD  api/user ............................................................................ api.users.current › Api\UserController@show
  PUT       api/user ........................................................................... api.users.update › Api\UserController@update
  POST      api/users ...................................................................... api.users.register › Api\AuthController@register
  POST      api/users/login ...................................................................... api.users.login › Api\AuthController@login
  GET|HEAD  docs/asset/{asset} ..................................... l5-swagger.default.asset › L5Swagger\Http › SwaggerAssetController@index
  GET|HEAD  docs/{jsonFile?} .............................................. l5-swagger.default.docs › L5Swagger\Http › SwaggerController@docs
  GET|HEAD  sanctum/csrf-cookie ................................................................. Laravel\Sanctum › CsrfCookieController@show

---
### 4. Testing a GET request on the broswer : 

```
osinachiuro.me/api/articles
```

<img width="631" alt="31b end point" src="https://user-images.githubusercontent.com/83463641/198158330-5b9dce33-7720-42ec-a6be-2832c3d1fac7.PNG">

---

### 5. Testing endppoints with Postman
* Get Request
```
https://osinachiuro.me/api/articles
```
<img width="635" alt="32a Postman - get" src="https://user-images.githubusercontent.com/83463641/198165191-3839a97b-4374-4083-9cf3-5a1b98c2e723.PNG">


* Put Request
```
https://osinachiuro.me/api/articles/
```
<img width="638" alt="32c Postman - put" src="https://user-images.githubusercontent.com/83463641/198164925-bad572a3-2440-4b4f-868b-68eba7504d09.PNG">


* Post Request
```
https://osinachiuro.me/_ignition/execute-solution
```
<img width="634" alt="32b Postman - post" src="https://user-images.githubusercontent.com/83463641/198164761-5f7c12b7-1a93-47c2-aac8-a35dd41239f5.PNG">


### The End
