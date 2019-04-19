# Grakn Labs Homebrew Tap

Welcome to Grakn Labs Homebrew Tap. Home to Grakn Core and Grakn Workbase distributions for Mac OSX.


## Adding The Tap

First of all, add our Homebrew Tap to your local Homebrew installation.

```
brew tap graknlabs/tap
brew tap-pin graknlabs/tap
```

## Installing [Grakn Core](https://github.com/graknlabs/grakn)

> **NOTE**: If you have an older version of Grakn Core installed through `homebrew-core`, make sure you first uninstall it.
> 
> ```
> brew uninstall grakn
> ```

Then, proceed with installing the latest Grakn Core with the following command.
```
brew install grakn-core
```


## Installing [Grakn Workbase](https://github.com/graknlabs/workbase)

Grakn Workbase is available via Brew Cask, and can be installed with the following command:
```
brew cask install grakn-workbase
```
