require 'spec_helper'

describe host '192.168.33.10' do
	it {
		should be_reachable.with(
			:port 	=> 22,
			:proto 	=> 'tcp'
		)
	}
end

