Testing host types with roles
=============================

The default setup of having one individual spec subdirectory for each host is not suitable for larger installations.

A modified Rakefile creates rake task for servers an applies a role to them. The mapping of server names to roles are supplied by a .yaml file in this example.

Typically that mapping comes from external sources such as ENCs/PuppetDB, a cloud management framework or a CMDB.
 
