require 'vagrant'

module VagrantPlugins
  module Skeleton
    module Errors
      class VagrantSkeletonError < Vagrant::Errors::VagrantError
        error_namespace('vagrant_skeleton.errors')
      end
    end
  end
end
