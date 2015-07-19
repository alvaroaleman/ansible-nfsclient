# ansible-nfsclient

## Description

This role sets up nfs mounts

## Requirements

* CentOS 7
* Fedora 22
* Ubuntu Trusty

## Role Variables

    nfs_mounts:
        - mountpoint: /my/mountpoint
          src: nfs.example.com:/exported/dir
          opts: rw

## Example Playbook

    - hosts: all
      roles:
         - { role: ansible-nfsclient }

## License

GNU AFFERO GENERAL PUBLIC LICENSE Version 3

## Integration testing

This role provides integration tests using the Ruby RSpec/serverspec framework
with a few drawbacks at the time of writing this documentation.

Running integration tests requires a number of dependencies being
installed. As this role uses Ruby RSpec there is the need to have
Ruby with rake and bundler available.

    # install role specific dependencies with bundler
    bundle install

<!-- -->

    # run the complete test suite with Docker
    rake suite

<!-- -->

    # run the complete test suite with Vagrant
    source  envvars-vagrant.sample
    rake suite

    # run the complete test suite with Vagrant without destroying the box afterwards
    source  envvars-vagrant.sample
    RAKE_ANSIBLE_VAGRANT_DONT_CLEANUP=1 rake suite


## Author information

Alvaro Aleman


<!-- vim: set nofen ts=4 sw=4 et: -->
