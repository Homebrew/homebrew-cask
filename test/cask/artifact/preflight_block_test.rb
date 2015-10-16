require 'test_helper'

describe Hbc::Artifact::PreflightBlock do
  describe 'install_phase' do
    it 'calls the specified block before installing, passing a Cask mini-dsl' do
      called      = false
      yielded_arg = nil

      CaskWithPreflight = Class.new(Hbc::Cask)
      CaskWithPreflight.class_eval do
        preflight do |c|
          called = true
          yielded_arg = c
        end
      end

      cask = CaskWithPreflight.new
      Hbc::Artifact::PreflightBlock.new(cask).install_phase

      called.must_equal true
      yielded_arg.must_be_kind_of Hbc::DSL::Preflight
    end
  end

  describe 'uninstall_phase' do
    it 'calls the specified block before uninstalling, passing a Cask mini-dsl' do
      called      = false
      yielded_arg = nil

      CaskWithUninstallPreflight = Class.new(Hbc::Cask)
      CaskWithUninstallPreflight.class_eval do
        uninstall_preflight do |c|
          called = true
          yielded_arg = c
        end
      end

      cask = CaskWithUninstallPreflight.new
      Hbc::Artifact::PreflightBlock.new(cask).uninstall_phase

      called.must_equal true
      yielded_arg.must_be_kind_of Hbc::DSL::UninstallPreflight
    end
  end
end
