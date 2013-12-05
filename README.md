# Step add-deploy-ssh-key

Wercker allows you to generate SSH keys and expose them as via
environment variables to your build or deployment pipeline.
This step can be used to write these values to an identity file
and use ssh-add to add the new identitie to the authentication
agent, ssh-agent.

This step is created especially to streamline the use of
Capistrano deployment with deploy_via set to :remote_copy, 
:export, or :checkout.

# Options

* `KEYNAME`: The name of the key variable to export, this is without the `_PUBLIC` or `_PRIVATE` suffix. This key can be configured in the *Settings* page of your application and is exposed via the *Deploy targets*'s *Deploy pipeline*.

# Example

``` yaml
deploy:
  steps:
    - williamli/add-ssh-deploy-key:
        keyname: MYPACKAGE_KEY
    - cap
```

# What's new

New in town.
 
# History

* 0.0.3 - Updates example in README
* 0.0.2 - Adds README
* 0.0.1 - Initial version

# License

The MIT License (MIT)

Copyright (c) 2013 wercker