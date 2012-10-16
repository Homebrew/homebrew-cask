require 'test_helper'

describe Cask do
  describe "load" do
    it "returns an instance of the cask with the given name" do
      c = Cask.load("adium")
      c.must_be_kind_of(Cask)
      c.must_be_instance_of(Adium)
    end

    it "raises an error when attempting to load a cask that doesn't exist" do
      lambda {
        Cask.load("notacask")
      }.must_raise(CaskUnavailableError)
    end
  end

  describe "all" do
    it "returns every cask that there is as a string" do
      all_casks = Cask.all
      all_casks.count.must_be :>, 20
      all_casks.each { |cask| cask.must_be_kind_of String }
    end
  end

  describe "install" do
    it "downloads and installs a nice fresh Cask" do
      caffeine = Cask.load('caffeine')

      shutup do
        caffeine.install
      end

      dest_path = HOMEBREW_CELLAR/'caffeine'/caffeine.version
      dest_path.must_be :directory?
      application = dest_path/'Caffeine.app'
      application.must_be :directory?
    end
  end
end
