## About

This is the home for vic's dot-files managed by [freshshell].

My intention is not just keep a backup of all my dot-files,
but also have them a bit more organized - I constantly switch
between linux and osx and want to keep some common configs.

If you don't know [freshshell], it's something like rubygems
for dot-files. 

## Installation

If you are vic or if you just want to clone all of vic's 
environment do:

```shell
curl -sL raw.github.com/vic/.../master/install.sh | bash -s
```

## Using your own repo.

If you already have a github repository for your dot-files
and would like to store your freshshell configuration on it,
just give your github repo and location of freshrc to *install.sh*.

```shell
curl -sL raw.github.com/vic/.../master/install.sh | bash -s you/repo config/freshrc
```

## Contributing

This particular repo is intended mainly for personal use, but if
you find something that needs fixing or have some recommendations,
or just want to use some snippets feel free to do so. 

Something cool about [freshshell]  is that people can collaborate
on common configurations (like useful git aliases, utilities) 
to make day-to-day life better. 
If you create or find something worth sharing, be sure to update
the freshshell [directory] - its being used like the search index by now.

[freshshell]: http://freshshell.com
[directory]: https://github.com/freshshell/fresh/wiki/Directory
