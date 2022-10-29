# Fooderlich

### Unleash your spicy imagination!

## Showcase

<table>
  <tr>
    <td>To buy</td>
    <td>Add grocery items</td>
    <td>Grocery list</td>
  </tr>
  <tr>
    <td><img src="ss/empty_screen.png" width="100%" height="70%" /></td>
    <td><img src="ss/add_grocery.png" width="100%" height="70%" /></td>
    <td><img src="ss/grocery_list.png" width="100%" height="70%" /></td>
  </tr>
   <tr>
    <td>Initialize</td>
    <td>Login</td>
    <td>Onboarding</td>
  </tr>
  <tr>
    <td><img src="ss/initializing.png" width="100%" height="70%" /></td>
    <td><img src="ss/img.png" width="100%" height="70%" /></td>
    <td><img src="ss/onboarding.png" width="100%" height="70%" /></td>
  </tr>
 </table>
<br/>

## Stacks

- Dart
- Flutter



## Keypoints

- The app notifies RouteInformationProvider when there’s a new route.
- The provider passes the route information to RouteInformationParser to parse
the URL string.
- The parser converts app state to and from a URL string.
- AppLink models the navigation state. It is a user-defined data type that
encapsulates information about a URL string.
- In development mode, the Flutter web app does not persist data between app
launches. The web app generated in release mode will work on the other browsers.


## Widgets & Classes
- [RouteInformationParser](https://api.flutter.dev/flutter/widgets/RouteInformationParser-class.html)
- [RouteInformation](https://api.flutter.dev/flutter/widgets/RouteInformation-class.html)

## Q&A

```

```
## Packages
- [url_launcher](https://pub.dev/packages/url_launcher)
- [shared_preferences](https://pub.dev/packages/shared_preferences)

# Docs and References
- [iOS Universal Links](https://www.raywenderlich.com/6080-universal-links-make-the-connection)
- [Android App Links](https://www.raywenderlich.com/18330247-deep-links-in-android-getting-started)
- [How to build and release an app](https://flutter.dev/docs/deployment/web#building-the-app-for-release)
- [Url strategies eg- how to remove the trailing '#'](https://flutter.dev/docs/development/ui/navigation/url-strategies)
- [Flutter folio - an example project](https://github.com/gskinnerTeam/flutter-folio)
- [examples of two different types of web renderers here](https://flutter.dev/docs/development/tools/web-renderers)


### Other Navigator 2.0 packages
- https://pub.dev/packages/auto_route
- https://pub.dev/packages/fluro
- https://pub.dev/packages/beamer

