require 'spec_helper'

describe network_fact('eth0') do
	its(:network) 	{ should eq '10.0.2.0' }
	its(:netmask)	{ should eq '255.255.255.0' }
end

describe network_fact('eth1') do
	its(:cidr) 	{ should eq '192.168.33.0/24' }
end

