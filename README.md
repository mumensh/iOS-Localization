iOS-Localization
================

Localize your iOS app at run-time.


To use the class, add the class to your project, then import it:
#import "Language.h"

set the language at the beginning of your app like this (in AppDelegate):
[Language setLanguage:@"en"];

Create a bundle file that contain your localize strings, then, when you 
want to retrieve a string based on your selected language use this:

[Language get:@"title" alter:@"title not exisit"];

thats it, your app will display the string depending on your selected language.

Thank you.
