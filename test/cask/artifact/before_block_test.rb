require 'test_helper'

describe Cask::Artifact::BeforeBlock do
  describe 'install' do
    it 'calls the specified block before installing' do
      called      = false
      yielded_arg = nil

      CaskWithBeforeInstall = Class.new(Cask)
      CaskWithBeforeInstall.class_eval do
        before_install do |c|
          called = true
          yielded_arg = c
        end
      end

      cask = CaskWithBeforeInstall.new
      Cask::Artifact::BeforeBlock.new(cask).install

      called.must_equal true
      yielded_arg.must_equal cask
    end
  end

  describe 'uninstall' do
    it 'calls the specified block before uninstalling, passing the cask' do
      called      = false
      yielded_arg = nil

      CaskWithBeforeUninstall = Class.new(Cask)
      CaskWithBeforeUninstall.class_eval do
        before_uninstall do |c|
          called = true
          yielded_arg = c
        end
      end

      cask = CaskWithBeforeUninstall.new
      Cask::Artifact::BeforeBlock.new(cask).uninstall

      called.must_equal true
      yielded_arg.must_equal cask
    end
  end
end
