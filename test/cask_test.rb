require 'test_helper'

describe "Cask" do
  describe "load" do
    it "returns an instance of the Cask for the given token" do
      c = Hbc.load("adium")
      c.must_be_kind_of(Hbc::Cask)
      c.must_be_instance_of(KlassPrefixAdium)
    end

    it "returns an instance of the Cask from a specific file location" do
      # defensive constant cleanup is required because Cask
      # classes may already be loaded due to audit test
      begin
        Object.class_eval{remove_const :KlassPrefixDia}
      rescue
      end
      location = File.expand_path('./Casks/dia.rb')
      c = Hbc.load(location)
      c.must_be_kind_of(Hbc::Cask)
      c.must_be_instance_of(KlassPrefixDia)
      Object.class_eval{remove_const :KlassPrefixDia}
    end

    it "returns an instance of the Cask from a url" do
      begin
        Object.class_eval{remove_const :KlassPrefixDia}
      rescue
      end
      url = "file://" + File.expand_path('./Casks/dia.rb')
      c = shutup do
        Hbc.load(url)
      end
      c.must_be_kind_of(Hbc::Cask)
      c.must_be_instance_of(KlassPrefixDia)
      Object.class_eval{remove_const :KlassPrefixDia}
    end

    it "raises an error when failing to download a Cask from a url" do
      lambda {
        url = "file://" + File.expand_path('./Casks/notacask.rb')
        shutup do
          Hbc.load(url)
        end
      }.must_raise(Hbc::CaskUnavailableError)
    end

    it "returns an instance of the Cask from a relative file location" do
      begin
        Object.class_eval{remove_const :KlassPrefixBbedit}
      rescue
      end
      c = Hbc.load("./Casks/bbedit.rb")
      c.must_be_kind_of(Hbc::Cask)
      c.must_be_instance_of(KlassPrefixBbedit)
      Object.class_eval{remove_const :KlassPrefixBbedit}
    end

    it "uses exact match when loading by token" do
      Hbc.load('test-opera').must_be_instance_of(KlassPrefixTestOpera)
      Hbc.load('test-opera-mail').must_be_instance_of(KlassPrefixTestOperaMail)
    end

    it "raises an error when attempting to load a Cask that doesn't exist" do
      lambda {
        Hbc.load("notacask")
      }.must_raise(Hbc::CaskUnavailableError)
    end
  end

  describe "all_tokens" do
    it "returns a token for every Cask" do
      all_cask_tokens = Hbc.all_tokens
      all_cask_tokens.count.must_be :>, 20
      all_cask_tokens.each { |cask| cask.must_be_kind_of String }
    end
  end

  describe "token" do
    it "converts a class constant to a token-style dashed string" do
      KlassPrefixPascalCasedConstant = Class.new(Hbc::Cask)
      KlassPrefixPascalCasedConstant.token.must_equal 'pascal-cased-constant'
    end

    it "properly dasherizes constants with single letters in the middle" do
      KlassPrefixGamesXChange = Class.new(Hbc::Cask)
      KlassPrefixGamesXChange.token.must_equal 'games-x-change'
    end
  end

  describe "metadata" do
    it "proposes a versioned metadata directory name for each instance" do
      cask_token = "adium"
      c = Hbc.load(cask_token)
      metadata_path = Hbc.caskroom.join(cask_token, '.metadata', c.version)
      c.metadata_versioned_container_path.to_s.must_equal(metadata_path.to_s)
    end
  end
end
