# fedora-workstation-setup

The objective here is to get a new Fedora OS on desktop set up to my liking as automatically as possible.

As my daily driver on a few machines, as I have switched hardware/workplaces/etc, I have had a few different scripts that I have used to do things like install packages, change configurations, etc. 

I want to start doing this in one fell swoop - ideally with a single script reaching out to other scripts to run. At first I thought about working with something like Ansible, but I want to try and make this as agnostic as possible and not require any additonal systems to accomplish.

Currently, I have the following requirements:

- bash script format
- only pre-requisite is having git installed
- something for a single-user environment
