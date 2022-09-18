# Fooderlich

### Unleash your spicy imagination!

## Showcase

<table>
  <tr>
    <td>Recipe</td>
    <td>Author</td>
    <td>Explore</td>
  </tr>
  <tr>
    <td><img src="ss/explore_screen.png" width="100%" height="70%" /></td>
    <td><img src="ss/recipe_screen3.png" width="100%" height="70%" /></td>
    <td><img src="ss/recipe_screen2.png" width="100%" height="70%" /></td>
  </tr>
 </table>
<br/>

## Stacks

- Dart
- Flutter



## Keypoints
### Chapter 3
- Three main categories of widgets are: structure and navigation; displaying
information; and, positioning widgets
- Two main visual design systems available in Flutter, Material and
Cupertino
- Using the Material theme, WE can build quite varied user interface elements to
give your app a custom look and feel
- It’s generally a good idea to establish a common theme object for the app, giving
you a single source of truth for app’s style
- The Scaffold widget implements all basic visual layout structure needs
- The Container widget can be used to group other widgets together
- The Container widget can be used to group other widgets together
### Chapter 4
- Flutter maintains three trees in parallel: the Widget, Element and RenderObject
trees.
- A Flutter app only updates the widgets that needs redrawing.
- The Flutter Inspector is a useful tool to debug, experiment with and inspect a
widget tree.
- always start by creating StatelessWidgets, only use
StatefulWidgets state of the widget needs to be managed.
- Inherited widgets are a good solution to access state from the top of the tree.
### Chapter 5 - Scrollable Widgets
- ListView and GridView support both horizontal and vertical scroll directions.
- The primary property lets Flutter know which scroll view is the primary scroll
view.
- physics in a scroll view lets you change the user scroll interaction.
- Especially in a nested list view, remember to set shrinkWrap to true so you can
give the scroll view a fixed height for all the items in the list.
- Use a FutureBuilder to wait for an asynchronous task to complete.
- we can nest scrollable widgets. For example, we can place a grid view within a
list view.
- Use ScrollController and ScrollNotification to control or listen to scroll
behavior.
- Barrel files are handy to group imports together. They also let you import many
widgets using a single file.


## Widgets
- [AppBar](https://api.flutter.dev/flutter/material/AppBar-class.html)
- [AssetImage](https://api.flutter.dev/flutter/painting/AssetImage-class.html)
- [BottomNavigationBar](https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html)
- [BottomNavigationBarItem](https://api.flutter.dev/flutter/widgets/BottomNavigationBarItem-class.html)
- [BoxDecoration](https://api.flutter.dev/flutter/painting/BoxDecoration-class.html)
- [Center](https://api.flutter.dev/flutter/widgets/Center-class.html)
- [CircleAvatar](https://api.flutter.dev/flutter/material/CircleAvatar-class.html)
- [Chip](https://api.flutter.dev/flutter/material/Chip-class.html)
- [Column](https://api.flutter.dev/flutter/widgets/Column-class.html)
- [DecorationImage](https://api.flutter.dev/flutter/painting/DecorationImage-class.html)
- [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html)
- [Icon](https://api.flutter.dev/flutter/widgets/Icon-class.html)
- [IconButton](https://api.flutter.dev/flutter/material/IconButton-class.html)
- [Image](https://api.flutter.dev/flutter/widgets/Image-class.html)
- [MaterialApp](https://api.flutter.dev/flutter/material/Material-class.html)
- [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html)
- [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html)
- [RotatedBox](https://api.flutter.dev/flutter/widgets/RotatedBox-class.html)
- [Row](https://api.flutter.dev/flutter/widgets/Row-class.html)
- [Scaffold](https://api.flutter.dev/flutter/material/Scaffold-class.html)
- [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html)
- [SnackBar](https://api.flutter.dev/flutter/material/SnackBar-class.html)
- [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html)
- [Text](https://api.flutter.dev/flutter/widgets/Text-class.html)
- [TextTheme](https://api.flutter.dev/flutter/material/TextTheme-class.html)
- [ThemeData](https://api.flutter.dev/flutter/material/ThemeData-class.html)
- [Wrap](https://api.flutter.dev/flutter/widgets/Wrap-class.html)

### Chapter 5
- [AsyncSnapshot](https://api.flutter.dev/flutter/widgets/AsyncSnapshot-class.html)
- [CircularProgressIndicator](https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html)
- [ClipRRect](https://api.flutter.dev/flutter/widgets/ClipRRect-class.html)
- [FutureBuilder](https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html)
- [GridView](https://api.flutter.dev/flutter/widgets/GridView-class.html)
- [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html)
- [NeverScrollableScrollPhysics](https://api.flutter.dev/flutter/widgets/NeverScrollableScrollPhysics-class.html)
- [SliverGridDelegateWithFixedCrossAxisCount](https://api.flutter.dev/flutter/rendering/SliverGridDelegate-class.html)
<br/>

## Q&A

```

```

# Docs and References
### Chapter 3 - Basic widgets
- [Material design system](https://material.io)
- [Material UI Components](https://flutter.dev/docs/development/ui/widgets/material)
- [Cupertino UI Components](https://flutter.dev/docs/development/ui/widgets/cupertino)
- [Material Components
widgets](https://flutter.dev/docs/development/ui/widgets/material)
- [Layout widgets](https://flutter.dev/docs/development/ui/widgets/layout)
- [Chip widget](https://medium.com/aubergine-solutions/1c46217dca9b)
- [Widget UI component library](https://gallery.flutter.dev/)

### Chapter 4 - Understanding widgets

- [Widget library](https://api.flutter.dev/flutter/widgets/widgets-library.html)
- [Devtools overview](https://flutter.dev/docs/development/tools/devtools/overview)
- [Detailed architectural overview of Flutter and widgets](https://flutter.dev/docs/resources/architectural-overview)
- [Widgets under the hood (Youtube series)](https://www.youtube.com/playlist?list=PLjxrf2q8roU2HdJQDjJzOeO6J3FoFLWr2)
- [Talk on how to render widgets](https://youtu.be/996ZgFRENMs)

### Chapter 5 - Scrollable widgets
- [Async-Await in Dart](https://dart.dev/codelabs/async-await)
- [ListView constructors](https://api.flutter.dev/flutter/widgets/ListView-class.html)
- [FutureBuilder docs](https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html)
- [Scroll Physics](https://api.flutter.dev/flutter/widgets/ScrollPhysics-class.html)
- [Blog on GridView](https://medium.com/@greg.perry/decode-gridview-9b123553e604)
- [BoxScrollView implementation](https://git.io/JabcO)
- [Slivers](https://www.raywenderlich.com/19539821-slivers-in-flutter-getting-started)
- [Slivers(Video)](https://www.youtube.com/watch?v=mSc7qFzxHDw)
- [ScrollController](https://api.flutter.dev/flutter/widgets/ScrollController-class.html)
