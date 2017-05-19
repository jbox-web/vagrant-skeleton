require 'pathname'

module VagrantPlugins
  module Skeleton
    lib_path = Pathname.new(File.expand_path('../vagrant-skeleton', __FILE__))
    autoload :Errors, lib_path.join('errors')

    def self.source_root
      @source_root ||= Pathname.new(File.expand_path('../../', __FILE__))
    end
  end
end

begin
  require 'vagrant'
rescue LoadError
  raise 'The Vagrant Skeleton plugin must be run within Vagrant.'
end

# This is a sanity check to make sure no one is attempting to install
# this into an early Vagrant version.
if Vagrant::VERSION < '1.5.0'
  raise 'The Vagrant Skeleton plugin is only compatible with Vagrant 1.5+.'
end

# Make sure base module class defined before loading plugin
require 'vagrant-skeleton/plugin'
