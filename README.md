# Dotfiles

```
Current Version : indev pre-release
Last Update     : 2020-06-08
```

No major mystery here, just a bunch of files to quickly get up and running in a
new environment or when reinstalling software. Also, I suppose, handy if I have
to restore my settings to my own personal defaults or something like that.

While several of the files in this directory are platform agnostic, the local
environment that they come from is a macOS installation, so no guarantees can
be made for compatibility across platforms. Also, several files in this repo
will contain my name and/or e-mail address, so people other than me should not
expect this repository to just "plug-and-play". 

I am making this repository public for two reasons:

1. So that people can get inspiration for their own repositories.
2. So that people can find errors, potential improvements and suggest tweaks.

If you have a thought, comment or idea regarding the dotfiles in this repo,
please open an issue first so that we can discuss the change. If I like what I
hear, I might implement the change myself or request a pull request.

## Opinionated Stuff

As Dotfiles are a collection of personalized settings, tweaks and adjustments,
it's only fair to be open and honest about the kinds of things that this repo
"believes", for lack of a better word. If you disagree with more than one of
the points below, you might not find much use from the various dotfiles here.

- Fish shell is superior to the alternatives.
- Despite its issues, iTerm2 remains the best macOS terminal emulator.
- Dark backgrounds with light text are preferable to the alternative.
- Color and font weight should have a clear meaning and never be used haphazardly.
- Information should be easy to access quickly, but not thrown in your face when you don't need it. (Think auto-hiding dock, no icons displayed on the desktop, straight-forward terminal prompts, etc.)
- Often-used commands should be "refactored" into script/function files.
- The ability to define aliases in your profile script(s) is convenient, but script/function files are preferred to keep them all in one place.
- There's never a reason to `ls` without the `-l` flag.
- In most cases, a human-friendly estimate of file sizes is preferable to an exact byte count (so `23K`, not `23125`).
- While `vim`, `emacs`, and all the rest of them have their own set of pros and cons, `nano` is the preferred text editor in a terminal shell.

## The Method to the Madness

It is recommended that the `scripts` folder be added to your path so that the
script there will be available globally. It is used to add new files to the 
dotfile repository, a process that will be described further down.

> Note that this script should **not** be moved to another directory that you
> already have in your path, as its relative position to the repository root
> is used to determine where to store the actual dotfiles.

## TODO / Backlog

- [ ] Create the script that adds files to the repository.
- [ ] Figure out a good way for the script to respect the `.env` file.
  - Especially if this can be done without any external dependencies.
- [ ] Figure out a good way to store the original path of a file so that the symantic links can be restored easily if broken.
- [ ] Create additional script for replacing a file with the version from the dotfile repository, for scenarios where a dotfile exists in the repository for software that has not been installed previously.
- [ ] Figure out a good way to include global Composer and NPM packages in the dotfile repository.
- [ ] Explore the best way to use `brew` and `brew cask` in dotfile repos.
- [ ] Rebuild the `osx` script from scratch to be up to date with the latest version of macOS. (Currently 10.15.4)
- [ ] Explore the limitation macOS has (had?) regarding symlinked files not always working as intended in sandboxed applications.
- [ ] Separate out the various functions in the `TODO_functions` file into proper Fish function files.
