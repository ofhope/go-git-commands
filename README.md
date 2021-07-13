
# Go Git Commands

A suite of commands that interface with Git

## Project Structure

There is a commands folder with each sub folder defining the name of the command and a main file within it defining the command. At build time this is converted to a git command by prefix `git-`.

Git recognizes commands in your $PATH with a prefix of `git-`. So for a given executable `git-hello` in your $PATH scope will be recognized by git and can be invoked by git with `git hello`.

## Building

There is a build script that iterates through each command folder and outputs the commands to `./bin`.

```bash
./build
```

## Install

Build the binaries and include the bin in your source path. Or optionally copy the desired commands to a scope thats inside your $PATH

```bash
./build
# Run and include the following output in profile config
printf 'export PATH="%s:$PATH"' "$PWD/bin"

# printf 'export PATH="%s:$PATH"' "$PWD/bin" >> ~/.bash_profile
# printf 'export PATH="%s:$PATH"' "$PWD/bin" >> ~/.zshrc
```
