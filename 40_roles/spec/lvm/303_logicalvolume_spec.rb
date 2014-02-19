require 'spec_helper'

# Our /root volume should be available, between ]10,100] GB
describe lvm_logicalvolume('precise64/root') do
	it { should exist }
	it { should be_available }
	its(:size_in_GB) { should be > 10 }
	its(:size_in_GB) { should_not be > 100 }

end

# we do not want to have a usr volume
describe lvm_logicalvolume('precise64/usr') do
	it { should_not exist }
end

