require "test_helper"

describe Hbc::CLI::Cat do
  describe "given a basic Cask" do
    before do
      @expected_output = <<-CLIOUTPUT.undent
        test_cask 'basic-cask' do
          version '1.2.3'
          sha256 '8c62a2b791cf5f0da6066a0a4b6e85f62949cd60975da062df44adf887f4370b'

          url 'http://example.com/TestCask.dmg'
          homepage 'http://example.com/'

          app 'TestCask.app'
        end
      CLIOUTPUT
    end

    it "displays the Cask file content about the specified Cask" do
      lambda do
        Hbc::CLI::Cat.run("basic-cask")
      end.must_output(@expected_output)
    end

    it "throws away additional Cask arguments and uses the first" do
      lambda do
        Hbc::CLI::Cat.run("basic-cask", "local-caffeine")
      end.must_output(@expected_output)
    end

    it "throws away stray options" do
      lambda do
        Hbc::CLI::Cat.run("--notavalidoption", "basic-cask")
      end.must_output(@expected_output)
    end
  end

  it "raises an exception when the Cask does not exist" do
    lambda do
      Hbc::CLI::Cat.run("notacask")
    end.must_raise Hbc::CaskUnavailableError
  end

  describe "when no Cask is specified" do
    it "raises an exception" do
      lambda do
        Hbc::CLI::Cat.run
      end.must_raise Hbc::CaskUnspecifiedError
    end
  end

  describe "when no Cask is specified, but an invalid option" do
    it "raises an exception" do
      lambda do
        Hbc::CLI::Cat.run("--notavalidoption")
      end.must_raise Hbc::CaskUnspecifiedError
    end
  end
end
