# Graknlabs Homebrew Tap
This is a Brew formulae repository for Grakn Core and Workbase.


## Adding The Tap
First of all, tap the repository:
```
$ brew tap graknlabs/tap
$ brew tap-pin graknlabs/tap
```

## Installing Grakn

**NOTE**: If an older version of grakn from `homebrew-core` is already installed, you will need to uninstall that first

```
$ brew uninstall grakn
```

Then, proceed with
```
$ brew install grakn-core
```


## Installing Workbase

Workbase is available via Brew Cask, and can be installed with the following command:
```
$ brew cask install grakn-workbase
```
