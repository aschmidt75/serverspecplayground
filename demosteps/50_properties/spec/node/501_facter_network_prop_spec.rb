require 'spec_helper'

describe network_fact('eth0') do
	its(:cidr) 	{ should eq property[:access_network] }
end

describe network_fact('eth1') do
	its(:cidr) 	{ should eq property[:backend_network] }
end

