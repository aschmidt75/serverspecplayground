require 'spec_helper'

describe lvm_physicalvolume('/dev/sda5') do
	it { should exist }
end

describe lvm_physicalvolume('/dev/sda6') do
	it { should_not exist }
end
