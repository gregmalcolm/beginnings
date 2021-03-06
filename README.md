# Beginnings

Brand new starter Rails app with the following:
* Rails 4.2


## To get started

### Change the project name

* Remove the .git folder
* Rename the project:
```
http://stackoverflow.com/questions/20988813/how-to-rename-rails-4-app
```
* Rename the database
* Regenerate the secret token:
```
rails secret
```

### Build it

```
createuser -r beginnings_development
createuser -r beginnings_test
bundle
rake db:create

```

### Tests

Project is set up with cucumber, respec and teaspoon.

```
guard
```

### Renaming the project

Caveat: You must be in the root folder and you must use snake case

```
bin/rename_project the_new_name
```

Note: This script will leave the bin folder and .ruby_version alone.

Afterwards you’ll need to follow the steps above to recreate the databases
