## To clone
```
git clone --recursive https://github.com/CSBSJU/CSCI-310
```

## To update
```
git pull
```

```
git submodule update
```

To make this easier for yourself in the future, you can execute the command

```
git config alias.up '!git pull && git submodule update'
```

which will create a new git _alias_ (read: command) called `up`. That way, to
run the previous two commands, you can now use the single command

```
git up
```
