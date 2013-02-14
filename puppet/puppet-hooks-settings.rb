# Parent directory of where we will generate our environments.  For instance,
# the production environment for this repo will live at 
# $ENVIRONMENT_BASEDIR/production
ENVIRONMENT_BASEDIR = "/var/lib/puppet/env/"

# Enable/Disable documentation generation using puppet doc
GENERATE_DOCUMENTATION=true

# Parent directory of where we will generate our documentation. Each
# environment will have its own documentation, located in
# $DOCUMENTATION_BASEDIR/<environment>
DOCUMENTATION_BASEDIR = "/var/www/html/doc/"

# post-receive hooks set GIT_DIR to the current repository. If you want to
# clone from a non-local repository, set this to the URL of the repository,
# such as git@git.host:puppet.git
SOURCE_REPOSITORY = File.expand_path(ENV['GIT_DIR'])

# We'll use the following hash to map git branches to environments, if the
# branch name does not match the environment it should represent.  Useful
# for mapping 'master' to a default. Mapping a branch to 'ignore' will
# prevent an environment and documentation for said environment, to be
# generated 
BRANCH_MAP = {
    "master"      => "ignore",
}

# Set this to a group that the puppet user is part of, such that it can read
# the repo to obtain manifest information
PUPPET_GROUP = "puppet"

# Repos will be created with the following file mode
ENVIRONMENT_MODE = 0750

APACHE_GROUP = "apache"

DOCUMENTATION_MODE = 0755
