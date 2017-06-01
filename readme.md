# Dot

A bunch of my dot and config files.

## Installing

This installs VimPlug and Base16, and replaces dot files in the home folder with the files in this directory. It also creates a directory in your home folder called `.dot`. In this directory is a symlink to the `bin` directory in this repo, which has the scripts for setup, diff, and updating dot files. The `bin` dir is also home of tmux configurations.

```
$ ./bin/dot-setup
```

## Diff

Displays the diff of the dot files in the local home folder and this repository.

```
$ dot-diff
```

## Updating

Copies files from the local home folder to the repo location.

```
$ dot-update
```
