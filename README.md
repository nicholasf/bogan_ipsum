# BoganIpsum

An Elixir port of Bogan Ipsum by http://elevenmedia.com.au/.

## Caveat

Some of the language below is not politically correct. It is not intended to cause offense.

## Usage

```
iex(1)> BoganIpsum.sentence()
"As busy as a perve no worries grab us a bush oyster."

iex(2)> BoganIpsum.sentences(3)
"Mad as a thingo flamin as busy as a grundies. Shazza got us some bloody oath! bloody lets throw a frog in a sock. He's got a massive digger how watch out for the fruit loop."

iex(3)> BoganIpsum.word
"dog's balls"

ex(5)> BoganIpsum.phrase
"get a dog up ya"

iex(6)> BoganIpsum.filler
"where"
```

## Installing

Ensure you have the latest Elixir installed.

Run `mix deps.get'

Start up ied and load bogan:

```
iex -S mix
```

BoganIpsum is also available as an expm: http://expm.co/bogan_ipsum

## Thanks

I lifted the json data from @rvagg's version at https://github.com/rvagg/node-boganipsum.

## License

MIT.
