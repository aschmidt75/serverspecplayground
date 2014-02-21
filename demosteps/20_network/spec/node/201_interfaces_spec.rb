require 'spec_helper'

describe fact 'interfaces'  do
	its(:value) { should match /eth0/ }
	its(:value) { should match /eth1/ }
	
	# no bond configuration
	its(:value) { should_not match /bond.*/ }
end

# check interface
describe interface 'eth0' do
	its(:speed) { should eq 1000 }
end

describe interface 'eth1' do
	it { should have_ipv4_address("192.168.33.20") }

	# not within std serverspec:
	it { should have_ipv4_network("192.168.33.0/24") }
end

describe interface 'eth0' do
	it { should have_ipv4_network("10.0.2.0/24") }
end

