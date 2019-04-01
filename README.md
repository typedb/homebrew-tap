# Graknlabs Homebrew Tap

Welcome to Graknlabs Homebrew Tap. Home to Grakn Core and Grakn Workbase distributions for Mac OSX.


## Adding The Tap

First of all, add our Homebrew Tap to your local Homebrew installation.

```
$ brew tap graknlabs/tap
$ brew tap-pin graknlabs/tap
```

## Installing Grakn Core

> **NOTE**: If you have an older version of Grakn installed through `homebrew-core`, make sure you first uninstall it.
> 
> ```
> $ brew uninstall grakn
> ```

Then, proceed with installing the latest Grakn Core with the following command.
```
$ brew install grakn-core
```


## Installing Grakn Workbase

Grakn Workbase is available via Brew Cask, and can be installed with the following command:
```
$ brew cask install grakn-workbase
```
