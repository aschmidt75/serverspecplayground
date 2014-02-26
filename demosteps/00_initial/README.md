Basic setup
===========

We need a minimal directory layout and helper files to get the rspec/serverspec engines running.

The spec files can be found below the 'spec/' subdirectory. Each server has an individual directory according ot the hostname (in this demo case, 'node')

A ''Rakefile'' creates a new rake task called 'spec' which includes all files named *_spec.rb from the spec/ subdirectory.

The spec_helper.rb requires serverspec and net/ssh to set up access to target hosts.

