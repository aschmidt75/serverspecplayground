require 'spec_helper'

describe package 'openssh-client'  do
	it { should be_installed }
end

describe package 'openssh-server'  do
	it { should be_installed }
end

describe file '/etc/ssh/sshd_config' do
	it { should be_mode 644 }
	it { should be_owned_by 'root' }
	it { should be_grouped_into 'root' }
	its(:content) {
		should match /^PermitEmptyPasswords\W+no$/
		should_not match /^PermitEmptyPasswords\W+yes$/
	}
end

describe service 'ssh' do
	  it { should be_enabled }
end

describe process 'sshd' do
	it { should be_running }
end

describe port(22) do
	it { should be_listening.with 'tcp' }
	it { should be_listening.with 'tcp6' }
end


