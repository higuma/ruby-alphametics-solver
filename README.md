# Ruby Alphametics Solver

I found an interesting alphametics puzzle solver from [Dive Into Python 3](http://www.diveintopython3.net/) chapter 8.

<http://www.diveintopython3.net/advanced-iterators.html#divingin>

> The original source is the following Python 2 code.
> 
> * Alphametics solver (Python recipe): <http://code.activestate.com/recipes/576615/>

I was inspired from the book and made a ruby version `alphametics.rb`. I also made a testing `alphametics_test.rb`, which is the same spec as `alphameticstest.py` (borrowed from Dive Into Python 3).

## Examples

```
$ ruby alphametics.rb 'SEND + MORE == MONEY'
SEND + MORE == MONEY
9567 + 1085 == 10652
$ ruby alphametics.rb 'HAWAII + IDAHO + IOWA + OHIO == STATES'
HAWAII + IDAHO + IOWA + OHIO == STATES
510199 + 98153 + 9301 + 3593 == 621246
$ ruby alphametics.rb 'PI * R ** 2 == AREA'
PI * R ** 2 == AREA
96 * 7 ** 2 == 4704
```

## Testing/Benchmark

```
$ python3 alphameticstest.py    # Python3 (borrowed from Dive Into Python 3)
.......
----------------------------------------------------------------------
Ran 7 tests in 5.134s

OK
$ rbenv local 1.9.3-p448 
$ ruby alphametics_test.rb      # Ruby 1.9.3
Run options: 

# Running tests:

.......

Finished tests in 2.551208s, 2.7438 tests/s, 2.7438 assertions/s.

7 tests, 7 assertions, 0 failures, 0 errors, 0 skips
$ rbenv local 2.0.0-p247 
$ ruby alphametics_test.rb      # Ruby 2.0.0
Loaded suite alphametics_test
Started
.......

Finished in 3.83947976 seconds.

7 tests, 7 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed

1.82 tests/s, 1.82 assertions/s
```

