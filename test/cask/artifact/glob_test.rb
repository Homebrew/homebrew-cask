require 'test_helper'

describe ":glob key on link" do
  describe 'install a link artifact using the :glob key' do
    it "links the application to the proper directory" do
      cask = Cask.load('with-glob').tap do |c|
        TestHelper.install_without_artifacts(c)
      end

      shutup do
        Cask::Artifact::App.new(cask).install
      end

      TestHelper.valid_alias?(Cask.appdir/'Caffeine.app').must_equal true
    end
  end

  describe "bad :glob value on link" do
    it "refuses to install" do
      invalid_cask = Cask.load('invalid/invalid-glob-value').tap do |c|
        TestHelper.install_without_artifacts(c)
      end

      err = lambda {
        Cask::Artifact::App.new(invalid_cask).install
      }.must_raise(CaskError)
      err.message.must_include ':glob expansion does not respond'
    end
  end

  describe "no match for :glob expansion on link" do
    it "refuses to install" do
      invalid_cask = Cask.load('invalid/invalid-glob-no-match').tap do |c|
        TestHelper.install_without_artifacts(c)
      end

      err = lambda {
        Cask::Artifact::App.new(invalid_cask).install
      }.must_raise(CaskError)
      err.message.must_include 'Failed to perform :glob expansion'
    end
  end
end
