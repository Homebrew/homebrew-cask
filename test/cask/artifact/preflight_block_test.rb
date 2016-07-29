require "test_helper"

describe Hbc::Artifact::PreflightBlock do
  describe "install_phase" do
    it "calls the specified block before installing, passing a Cask mini-dsl" do
      called      = false
      yielded_arg = nil

      cask = Hbc::Cask.new("with-preflight") do
        preflight do |c|
          called = true
          yielded_arg = c
        end
      end

      Hbc::Artifact::PreflightBlock.new(cask).install_phase

      called.must_equal true
      yielded_arg.must_be_kind_of Hbc::DSL::Preflight
    end
  end

  describe "uninstall_phase" do
    it "calls the specified block before uninstalling, passing a Cask mini-dsl" do
      called      = false
      yielded_arg = nil

      cask = Hbc::Cask.new("with-uninstall-preflight") do
        uninstall_preflight do |c|
          called = true
          yielded_arg = c
        end
      end

      Hbc::Artifact::PreflightBlock.new(cask).uninstall_phase

      called.must_equal true
      yielded_arg.must_be_kind_of Hbc::DSL::UninstallPreflight
    end
  end
end
