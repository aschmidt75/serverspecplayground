require 'spec_helper'

# check interface
describe interface 'eth0' do
	its(:speed) { should eq 1000 }

	it { should have_ipv4_network("10.0.2.0/24") }
end

