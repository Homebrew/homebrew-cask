require 'test_helper'

describe "Cask" do
  describe "load" do
    it "returns an instance of the cask with the given name" do
      c = Cask.load("adium")
      c.must_be_kind_of(Cask)
      c.must_be_instance_of(Adium)
    end

    it "returns an instance of the cask from a specific file location" do
      # defensive constant cleanup is required because Cask
      # classes may already be loaded due to audit test
      begin
        Object.class_eval{remove_const :Dia}
      rescue
      end
      location = File.expand_path('./Casks/dia.rb')
      c = Cask.load(location)
      c.must_be_kind_of(Cask)
      c.must_be_instance_of(Dia)
      Object.class_eval{remove_const :Dia}
    end

    it "returns an instance of the cask from a url" do
      begin
        Object.class_eval{remove_const :Dia}
      rescue
      end
      url = "file://" + File.expand_path('./Casks/dia.rb')
      c = shutup do
        Cask.load(url)
      end
      c.must_be_kind_of(Cask)
      c.must_be_instance_of(Dia)
      Object.class_eval{remove_const :Dia}
    end

    it "raises an error when failing to download a cask from a url" do
      lambda {
        url = "file://" + File.expand_path('./Casks/notacask.rb')
        shutup do
          Cask.load(url)
        end
      }.must_raise(CaskUnavailableError)
    end

    it "returns an instance of the cask from a relative file location" do
      begin
        Object.class_eval{remove_const :Bbedit}
      rescue
      end
      c = Cask.load("./Casks/bbedit.rb")
      c.must_be_kind_of(Cask)
      c.must_be_instance_of(Bbedit)
      Object.class_eval{remove_const :Bbedit}
    end

    it "uses exact match when loading by name" do
      Cask.load('rest-client').must_be_instance_of(RestClient)
      Cask.load('cocoarestclient').must_be_instance_of(Cocoarestclient)
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
