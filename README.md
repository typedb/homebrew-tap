# Grakn Homebrew Tap
This repository contains a collection of Homebrew (aka, Brew) "formulae" for Grakn

## Installing Grakn

```
$ brew tap graknlabs/tap
$ brew tap-pin graknlabs/tap
$ brew install grakn-core
```

or alternatively you can refer to formula by its full name

```
$ brew install graknlabs/tap/grakn-core
```

Please note that if an older version of grakn from homebrew-core is being installed, you will need to uninstall that and specifically install the graknlabs/tap version, with:

```
$ brew uninstall grakn
$ brew install graknlabs/tap/grakn
```
