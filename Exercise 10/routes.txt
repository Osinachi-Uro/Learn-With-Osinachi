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
