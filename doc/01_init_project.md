## Start a project

For instructions to install `stack` see the official documentation:
[How to install](https://docs.haskellstack.org/en/stable/README/#how-to-install)

The `stack new` command will create a new directory with all
files needed to start a project correctly.

With `git init` I create a *git* repository.

```
$ stack new learnhaskell
Downloading template "new-template" to create project "learnhaskell" in learnhaskell/ ...

The following parameters were needed by the template but not provided: category
You can provide them in /home/my_user/.stack/config.yaml, like this:
templates:
  params:
    category: value
Or you can pass each one as parameters like this:
stack new learnhaskell new-template -p "category:value"

Looking for .cabal or package.yaml files to use to init the project.
Using cabal packages:
- learnhaskell/

Selecting the best among 18 snapshots...

* Matches lts-16.13

Selected resolver: lts-16.13
Initialising configuration using resolver: lts-16.13
Total number of user packages considered: 1
Writing configuration to file: learnhaskell/stack.yaml
All done.
/home/erlnow/.stack/templates/new-template.hsfiles:    3.72 KiB downloaded...
$ cd learnhaskell
$ git init
Starting empty Git in /home/my_user/learnhaskell/.git/
```

With this I edit the description of the project, `README.md`, and
`ChangeLog.md`.  At this point, I create my first commit. I use
[tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) plugin,
but a session in the console to commit my first changes and push
this changes to GitHub repository, should be something like this:

```
$ git add .
$ git commit -m "Initial release: Project Skeleton"
$ git branch -M master
$ git remote add origin git@github.com:erlnow/learnhaskell.git
$ git push -u origin master
```

