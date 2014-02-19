require 'spec_helper'

describe 'Linux kernel parameters' do

	# check kernel os releases
	context linux_kernel_parameter('kernel.osrelease') do
		its(:value) { should_not 	match /^2\.6/ }
		its(:value) { should 		match /^3\.2/ }
	end

	# ensure that packet forward is not enabled (ipv4)
	context linux_kernel_parameter 'net.ipv4.ip_forward' do
		its(:value) {
			should eq 0
		}
	end
end



