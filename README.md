Believe it or not this is a ECMA-262 edition 5.1-compatible regular expression converter.  It converts JS regexp into Ruby's.

It has only one intuitive usage:

```ruby
require 'javascriptre'
re = Javascriptre.new('JS re')
re.match('...')
```
