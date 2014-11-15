require 'test_helper'

describe Cask::Artifact::AfterBlock do
  describe 'install_phase' do
    it 'calls the specified block after installing, passing a Cask mini-dsl' do
      called      = false
      yielded_arg = nil

      CaskWithAfterInstall = Class.new(Cask)
      CaskWithAfterInstall.class_eval do
        postflight do |c|
          called = true
          yielded_arg = c
        end
      end

      cask = CaskWithAfterInstall.new
      Cask::Artifact::AfterBlock.new(cask).install_phase

      called.must_equal true
      yielded_arg.must_be_kind_of Cask::DSL::AfterInstall
    end
  end

  describe 'uninstall_phase' do
    it 'calls the specified block after uninstalling, passing a Cask mini-dsl' do
      called      = false
      yielded_arg = nil

      CaskWithAfterUninstall = Class.new(Cask)
      CaskWithAfterUninstall.class_eval do
        uninstall_postflight do |c|
          called = true
          yielded_arg = c
        end
      end

      cask = CaskWithAfterUninstall.new
      Cask::Artifact::AfterBlock.new(cask).uninstall_phase

      called.must_equal true
      yielded_arg.must_be_kind_of Cask::DSL::AfterUninstall
    end
  end
end
