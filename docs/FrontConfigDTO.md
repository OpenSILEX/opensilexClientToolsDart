# swagger.model.FrontConfigDTO

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pathPrefix** | **String** | Application url path prefix | [default to null]
**homeComponent** | **String** | Home component identifier | [default to null]
**notFoundComponent** | **String** | Not found component identifier | [default to null]
**headerComponent** | **String** | Header component identifier | [default to null]
**loginComponent** | **String** | Login component identifier | [default to null]
**menuComponent** | **String** | Menu component identifier | [default to null]
**footerComponent** | **String** | Footer component identifier | [default to null]
**menu** | [**List&lt;MenuItemDTO&gt;**](MenuItemDTO.md) | Application menu with routes | [default to []]
**routes** | [**List&lt;RouteDTO&gt;**](RouteDTO.md) | List of configured routes | [default to []]
**themeModule** | **String** | Theme module identifier | [optional] [default to null]
**themeName** | **String** | Theme module name | [optional] [default to null]
**openIDAuthenticationURI** | **String** | OpenID Authorization URI | [optional] [default to null]
**openIDConnectionTitle** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


