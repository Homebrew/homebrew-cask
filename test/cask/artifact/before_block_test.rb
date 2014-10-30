require 'test_helper'

describe Cask::Artifact::BeforeBlock do
  describe 'install_phase' do
    it 'calls the specified block before installing, passing a Cask mini-dsl' do
      called      = false
      yielded_arg = nil

      CaskWithBeforeInstall = Class.new(Cask)
      CaskWithBeforeInstall.class_eval do
        preflight do |c|
          called = true
          yielded_arg = c
        end
      end

      cask = CaskWithBeforeInstall.new
      Cask::Artifact::BeforeBlock.new(cask).install_phase

      called.must_equal true
      yielded_arg.must_be_kind_of Cask::DSL::BeforeInstall
    end
  end

  describe 'uninstall_phase' do
    it 'calls the specified block before uninstalling, passing a Cask mini-dsl' do
      called      = false
      yielded_arg = nil

      CaskWithBeforeUninstall = Class.new(Cask)
      CaskWithBeforeUninstall.class_eval do
        uninstall_preflight do |c|
          called = true
          yielded_arg = c
        end
      end

      cask = CaskWithBeforeUninstall.new
      Cask::Artifact::BeforeBlock.new(cask).uninstall_phase

      called.must_equal true
      yielded_arg.must_be_kind_of Cask::DSL::BeforeUninstall
    end
  end
end
