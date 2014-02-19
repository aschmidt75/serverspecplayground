require 'spec_helper'



describe lvm_volumegroup('precise64') do
	it { should exist }
	it { should have_format 'lvm2' }
	it { should have_kb_size '83632128' }
end
