require 'test_helper'

describe Cask::Artifact::PreflightBlock do
  describe 'install_phase' do
    it 'calls the specified block before installing, passing a Cask mini-dsl' do
      called      = false
      yielded_arg = nil

      CaskWithPreflight = Class.new(Cask)
      CaskWithPreflight.class_eval do
        preflight do |c|
          called = true
          yielded_arg = c
        end
      end

      cask = CaskWithPreflight.new
      Cask::Artifact::PreflightBlock.new(cask).install_phase

      called.must_equal true
      yielded_arg.must_be_kind_of Cask::DSL::Preflight
    end
  end

  describe 'uninstall_phase' do
    it 'calls the specified block before uninstalling, passing a Cask mini-dsl' do
      called      = false
      yielded_arg = nil

      CaskWithUninstallPreflight = Class.new(Cask)
      CaskWithUninstallPreflight.class_eval do
        uninstall_preflight do |c|
          called = true
          yielded_arg = c
        end
      end

      cask = CaskWithUninstallPreflight.new
      Cask::Artifact::PreflightBlock.new(cask).uninstall_phase

      called.must_equal true
      yielded_arg.must_be_kind_of Cask::DSL::UninstallPreflight
    end
  end
end
