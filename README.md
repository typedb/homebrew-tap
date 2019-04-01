# Graknlabs Homebrew Tap
This is a Brew formulae repository for Grakn Core and Workbase.


## Adding The Tap
First of all, tap the repository:
```
$ brew tap graknlabs/tap
$ brew tap-pin graknlabs/tap
```

## Installing Grakn

> **NOTE**: If you have an older version of Grakn installed through `homebrew-core`, make sure you first uninstall it.
> 
> ```
> $ brew uninstall grakn
> ```

Then, proceed with installing the latest Grakn Core with the following command.
```
$ brew install grakn-core
```


## Installing Workbase

Grakn Workbase is available via Brew Cask, and can be installed with the following command:
```
$ brew cask install grakn-workbase
```
