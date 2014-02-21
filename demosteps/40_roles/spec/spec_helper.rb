require 'serverspec'
require 'pathname'
require 'net/ssh'
require 'yaml'
require 'pp'

include SpecInfra::Helper::Ssh
include SpecInfra::Helper::DetectOS

RSpec.configure do |c|
  if ENV['ASK_SUDO_PASSWORD']
    require 'highline/import'
    c.sudo_password = ask("Enter sudo password: ") { |q| q.echo = false }
  else
    c.sudo_password = ENV['SUDO_PASSWORD']
  end

  # add our system paths, so we can find things like ip, ethtool, ...
  c.path='/sbin:/usr/sbin'
  c.before :all do
    block = self.class.metadata[:example_group_block]
    if RUBY_VERSION.start_with?('1.8')
      file = block.to_s.match(/.*@(.*):[0-9]+>/)[1]
    else
      file = block.source_location.first
    end

    # get host from environment
    host = ENV['TARGET_HOST']

    if c.host != host
      c.ssh.close if c.ssh
      c.host  = host
      options = Net::SSH::Config.for(c.host)
      user    = options[:user] || Etc.getlogin

      c.ssh   = Net::SSH.start(host, user, options)
    end
  end
end

