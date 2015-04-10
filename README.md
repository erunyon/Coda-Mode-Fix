Coda Mode Fix
==============

I'll admit it. I'm a bit of a stickler when it comes to my CSS. That includes spacing. So when my editor of choice doesn't respect my preferences, I have no choice but to make it do so. In this instance, my issue is with Coda's long-standing habit of inserting a space after the colon when doing auto-complete.

Rather than this:
```css
  .foo {margin: 1em; padding: 1em; color: red;}
```
I want this:
```css
  .foo {margin:1em; padding:1em; color:red;}
```

The culprit is the "CodaCompletion.plist" file inside the "CSS.mode" package.
_Contents > Resources > CSS.mode > Contents > Resources > CodaCompletion.plist_

It used to be easy to fix this spacing issue, but as of 2.0.1, Panic changed the syntax and hence increased the difficulty level.

Disclaimer
----------
Yes, I know everybody has their own preferences when it comes to CSS spacing, and this is mine. Please don't contact me telling me how wrong I am. I don't care and I'm not going to change my preference in this case. Thank you.

How to use
-----------
The easiest route would be to find the version of **Coda 2** you're using in the "Versions" folder and download the "CSS.mode" file enclosed. Next, make sure **Coda 2** is not running, and copy that file to:
_~/Library/Application Support/Coda 2/Modes/_

When you restart **Coda 2**, it will use the new CSS.mode located in your Library. It would be a good idea to either re-run this script or check back here when **Coda 2** updates as it's highly likely they'll update this file with each release.

Changelog
---------
* 2015-04-10 **UPDATE** Added version 2.5.8
* 2012-06-24 **ADD:** Initial commit - Includes Coda 2.0 and 2.0.1 CSS.mode files

2.0.1 Syntax
------------
* Remove space after the colon
* Decrease first **string** value by **1**

```xml
<key>SelectionRange</key>
<string>{25, 0}</string>
<key>PostString</key>
<string>: </string>
```

2.0 Syntax
----------
* Remove space after the colon
* Change **integer** from **2** to **1**

```xml
<key>MoveCursor</key>
<integer>2</integer>
<key>PostString</key>
<string>: </string>
```

License
-------
"Coda Mode Fix" is released under the MIT license. I make no guarantees about the reliability of this script. Use at your own risk.
