require 'spec_helper'

describe fact 'osfamily'  do
	its(:value) { should eq 'Debian' }
end

describe fact 'processorcount' do
	its(:value) { should eq '2' }
	its(:numeric_value) { should be >= 2 }
	its(:numeric_value) { should_not be > 4 }
end

