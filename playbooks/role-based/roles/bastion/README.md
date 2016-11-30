Role for configuring bastion hosts
=========

This role is used to configure bastion hosts for the environments. More details to follow.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should/will be mentioned here. 

Role Variables
--------------

This section contains a list of variables used by the role and their defult values. 
Those which should/can be changed will be marked as such followed by a short explanation.
All these variables can be overriden anywhere, since they have the lowes priority. 


bastion_packages 	- Type: flat list. Contains the list of packages yum should install on the Bastion host
exports_url 	 	- Type: string, Contains the path to the 'exports' file for NFS on Bastion
rhel_repositories:	- Type: hash, Contains the required key-value pairs for the yum_repository module. 

Dependencies
------------

So far empty. If there are some dependencies in the future, they can be described here.

Example Playbook
----------------

An example of how to use the role (for instance, with variables passed in as parameters):

    - hosts: group or hostname from inventory
      roles:
         - { role: bastion, exports_url: some_new_url }

A simple way calling of the role is included in the bastion.yml file in the tests directory. 


