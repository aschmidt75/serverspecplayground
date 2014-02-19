require 'spec_helper'

describe package 'chef' do
	it { should be_installed.by('gem') }
end




