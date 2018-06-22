# Demonstration Puppet Module for JetBrains Puppet module resolution
Using this simple repo with one of JetBrains IDE's with the Puppet plugin you can demonstrate the interference with the presence of a `.fixtures.yml` file.

## Steps to reproduce
1. If you use the IDE and Add dependencies as usual from project menu, a `.dependencies` directory will be created with the contents of the one demonstration module and its dependencies.
2. If you then  look at `manifests/resolve-test.pp` you will find that reference to the dependent module is indicated as ***Can't resolve class definition*** and the specified parameters are marked as ***Can't resolve class parameter***.
3. If you then REMOVE the (empty!) `.fixtures.yml` file, the above errors are fixed.

## Possible related Issues
While investigating this on JetBrains YouTrack board, I ran across two issues that may be related.
1. [RUBY-19984: Puppet: can't resolve symbols on modules outside ./modules](https://youtrack.jetbrains.com/issue/RUBY-19984)
2. [RUBY-20601: Puppet "Can't resolve template path" on "module_name" variable ](https://youtrack.jetbrains.com/issue/RUBY-20601)

## Suspicions
I'm suspecting some interference with the normal use of `Puppetfile` & `metadata.json`.
