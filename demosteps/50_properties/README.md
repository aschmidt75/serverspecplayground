Using properties
================

Specs with embedded technical infos such as ip addresses are often not suitable for different environments, because details can vary.

So we introduce properties and address them in our specs. 
We move to a separate location, in this case a .yaml file. In more complex environments it will be likely that properties come from a shared external source such as a hiera .yaml file.

The .yaml file is located in a subdirectory called ''properties''. To access them we need to adapt the spec_helper.rb file:

```
require 'yaml'
properties      = YAML.load_file 'properties/all.yaml'
# ...
set_property	properties
```

Later we are able to access properties within the specification:
```
describe network_fact('eth0') do
  its(:cidr)      { should eq "#{property[:access_network]}" }
end
```

