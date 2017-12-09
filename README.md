# Note: This project has been superseded by [`jsvu`](https://github.com/GoogleChromeLabs/jsvu).

# homebrew-ecmascript [![Build status](https://travis-ci.org/mathiasbynens/homebrew-ecmascript.svg?branch=master)](https://travis-ci.org/mathiasbynens/homebrew-ecmascript)

This repository hosts Homebrew formulae for ECMAScript engines.

Since [building from source](https://github.com/Homebrew/brew/blob/master/docs/Acceptable-Formulae.md#we-dont-like-binary-formulae) usually takes quite a while for ECMAScript engines, these formulae use official precompiled binaries, resulting in optimal `brew install $formula` performance.

## How do I install these formulae?

Use `brew install mathiasbynens/ecmascript/<formula>`.

Alternatively, install via URL:

```
brew install https://raw.githubusercontent.com/mathiasbynens/homebrew-ecmascript/master/<formula>.rb
```

You could use `brew tap mathiasbynens/ecmascript` and then `brew install <formula>`, but the latter fails if the formula conflicts with one from [homebrew-core](https://github.com/Homebrew/homebrew-core) or another tap. I wouldn’t recommend this method.

## Troubleshooting

First, please run `brew update` and `brew doctor`.

Second, read the [troubleshooting checklist](https://github.com/Homebrew/brew/blob/master/docs/Troubleshooting.md#troubleshooting).

## More documentation

`brew help`, `man brew`, or check [the Homebrew documentation](https://github.com/Homebrew/brew/tree/master/docs#readme).

## Author

| [![twitter/mathias](https://gravatar.com/avatar/24e08a9ea84deb17ae121074d0f17125?s=70)](https://twitter.com/mathias "Follow @mathias on Twitter") |
|---|
| [Mathias Bynens](https://mathiasbynens.be/) |

## License

_homebrew-ecmascript_ is available under the [MIT](https://mths.be/mit) license.
