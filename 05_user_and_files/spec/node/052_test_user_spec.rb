require 'spec_helper'

describe user 'osdcuser' do
	it { should exist }
	it { should belong_to_group 'osdc' }
	it { should have_home_directory '/home/osdcuser' }
end

