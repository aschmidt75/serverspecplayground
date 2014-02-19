require 'spec_helper'

describe routing_table do
	it {
		should have_entry(
			:destination => '192.168.100.0/24',
			:interface   => 'eth1',
			:gateway     => '192.168.33.1'
		)
	}
end

#sudo ip ro add 192.168.100.0/24 via 192.168.33.1
