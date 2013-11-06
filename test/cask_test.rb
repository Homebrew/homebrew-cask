require 'test_helper'

describe "Cask" do
  describe "load" do
    it "returns an instance of the cask with the given name" do
      c = Cask.load("adium")
      c.must_be_kind_of(Cask)
      c.must_be_instance_of(Adium)
    end

    it "returns an instance of the cask from a specific file location" do
      location = File.expand_path('./Casks/dia.rb')
      c = Cask.load(location)
      c.must_be_kind_of(Cask)
      c.must_be_instance_of(Dia)
    end

    it "returns an instance of the cask from a url" do
      url = "file://" + File.expand_path('./Casks/dia.rb')
      c = Cask.load(url)
      c.must_be_kind_of(Cask)
      c.must_be_instance_of(Dia)
    end

    it "raises an error when failing to download a cask from a url" do
      lambda {
        url = "file://" + File.expand_path('./Casks/notacask.rb')
        Cask.load(url)
      }.must_raise(CaskUnavailableError)
    end

    it "returns an instance of the cask from a relative file location" do
      c = Cask.load("./Casks/dia.rb")
      c.must_be_kind_of(Cask)
      c.must_be_instance_of(Dia)
    end

    it "uses exact match when loading by name" do
      Cask.load('rest-client').must_be_instance_of(RestClient)
      Cask.load('cocoa-rest-client').must_be_instance_of(CocoaRestClient)
    end

    it "raises an error when attempting to load a cask that doesn't exist" do
      lambda {
        Cask.load("notacask")
      }.must_raise(CaskUnavailableError)
    end
  end

  describe "all_titles" do
    it "returns every cask that there is as a string" do
      all_casks = Cask.all_titles
      all_casks.count.must_be :>, 20
      all_casks.each { |cask| cask.must_be_kind_of String }
    end
  end

  describe "title" do
    it "converts class constant to dasherized string" do
      PascalCasedConstant = Class.new(Cask)
      PascalCasedConstant.title.must_equal 'pascal-cased-constant'
    end

    it "properly dasherizes constants with single letters in the middle" do
      GamesXChange = Class.new(Cask)
      GamesXChange.title.must_equal 'games-x-change'
    end
  end
end
