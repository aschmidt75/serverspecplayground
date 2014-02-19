require 'spec_helper'

describe command('uname -a') do
	its(:stdout) { should match /Ubuntu/ }
end

