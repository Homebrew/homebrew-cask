require 'test_helper'

describe Cask::Artifact::Block do
  describe 'install' do
    it 'calls the specified block after installing, passing the cask' do
      called      = false
      yielded_arg = nil

      CaskWithAfterInstall = Class.new(Cask)
      CaskWithAfterInstall.class_eval do
        after_install do |c|
          called = true
          yielded_arg = c
        end
      end

      cask = CaskWithAfterInstall.new
      Cask::Artifact::Block.new(cask).install

      called.must_equal true
      yielded_arg.must_equal cask
    end
  end

  describe 'uninstall' do
    it 'calls the specified block after uninstalling, passing the cask' do
      called      = false
      yielded_arg = nil

      CaskWithAfterUninstall = Class.new(Cask)
      CaskWithAfterUninstall.class_eval do
        after_uninstall do |c|
          called = true
          yielded_arg = c
        end
      end

      cask = CaskWithAfterUninstall.new
      Cask::Artifact::Block.new(cask).uninstall

      called.must_equal true
      yielded_arg.must_equal cask
    end
  end
end
