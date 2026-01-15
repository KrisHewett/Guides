# Words List Syntax
Where `~` tells the spell checker it that case and possibly accents were removed.

Custom dictionaries tend to be very small compared to full language dictionaries, so, they are not optimized for size.

Custom dictionaries support a few special characters:


* `~` - prefix that tells the spell checker to only use the word when case sensitivity is turned off.


* `+` - prefix/suffix that tells the spell checker that a word MUST be combined with another word to be valid.


* `*` - prefix/suffix that tells the spell checker that a word can be combined with another word.


* `!` - prefix forbid a word.

---
If you have the following in your custom dictionary:
~~~
fooo+
+baar
+bat
+cat
big*
!fooocat
~~~
Then `fooobaar` and `fooobat` will be valid, but `fooo`, `baar`, and `fooocat` will not be.

>
>This is useful for languages where people commonly combine words: `errorcode`, `systemtime`, `systemerror`.
>
>
> *Note: the custom dictionary also allows other characters like: `_`, `-`, `0-9`, `'`.*
>
---
Dictionary entries like:
~~~
systemerror-409
503_serviceunavailable
~~~
Will only match the entire entry: `503_serviceunavailable` but not `serviceunavailable`.