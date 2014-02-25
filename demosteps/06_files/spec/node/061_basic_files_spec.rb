require 'spec_helper'

describe file '/home/vagrant/.ssh/' do
	it { should be_directory }
	it { should be_mode 700 }
end

describe file '/home/vagrant/.ssh/authorized_keys' do
	it { should be_file }
	it { should be_mode 600 }
	it { should contain('vagrant@precise64') }
	it { should be_owned_by 'vagrant' }
	it { should be_grouped_into 'vagrant' }
end

