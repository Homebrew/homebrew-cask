require 'test_helper'

describe Hbc::Artifact::PostflightBlock do
  describe 'install_phase' do
    it 'calls the specified block after installing, passing a Cask mini-dsl' do
      called      = false
      yielded_arg = nil

      CaskWithPostflight = Class.new(Hbc::Cask)
      CaskWithPostflight.class_eval do
        postflight do |c|
          called = true
          yielded_arg = c
        end
      end

      cask = CaskWithPostflight.new
      Hbc::Artifact::PostflightBlock.new(cask).install_phase

      called.must_equal true
      yielded_arg.must_be_kind_of Hbc::DSL::Postflight
    end
  end

  describe 'uninstall_phase' do
    it 'calls the specified block after uninstalling, passing a Cask mini-dsl' do
      called      = false
      yielded_arg = nil

      CaskWithUninstallPostflight = Class.new(Hbc::Cask)
      CaskWithUninstallPostflight.class_eval do
        uninstall_postflight do |c|
          called = true
          yielded_arg = c
        end
      end

      cask = CaskWithUninstallPostflight.new
      Hbc::Artifact::PostflightBlock.new(cask).uninstall_phase

      called.must_equal true
      yielded_arg.must_be_kind_of Hbc::DSL::UninstallPostflight
    end
  end
end
