require 'spec_helper'

describe file '/' do
	it { should be_mounted.with(
			:device => "/dev/mapper/precise64-root",
			:type    => 'ext4'
		)
	}
end

describe file '/vagrant' do
	it { should be_mounted.with(
			:type    => 'vboxsf'
		)
	}
end

