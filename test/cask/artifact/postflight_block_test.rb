require "test_helper"

describe Hbc::Artifact::PostflightBlock do
  describe "install_phase" do
    it "calls the specified block after installing, passing a Cask mini-dsl" do
      called      = false
      yielded_arg = nil

      cask = Hbc::Cask.new("with-postflight") do
        postflight do |c|
          called = true
          yielded_arg = c
        end
      end

      Hbc::Artifact::PostflightBlock.new(cask).install_phase

      called.must_equal true
      yielded_arg.must_be_kind_of Hbc::DSL::Postflight
    end
  end

  describe "uninstall_phase" do
    it "calls the specified block after uninstalling, passing a Cask mini-dsl" do
      called      = false
      yielded_arg = nil

      cask = Hbc::Cask.new("with-uninstall-postflight") do
        uninstall_postflight do |c|
          called = true
          yielded_arg = c
        end
      end

      Hbc::Artifact::PostflightBlock.new(cask).uninstall_phase

      called.must_equal true
      yielded_arg.must_be_kind_of Hbc::DSL::UninstallPostflight
    end
  end
end
