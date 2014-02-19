require 'spec_helper'

describe interface 'eth1' do
	it { should have_ipv4_address("192.168.33.20") }

	# not within std serverspec:
	it { should have_ipv4_network("192.168.33.0/24") }
end
