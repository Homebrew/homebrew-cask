require "test_helper"

describe Hbc::CLI::Info do
  it "displays some nice info about the specified Cask" do
    lambda {
      Hbc::CLI::Info.run("local-caffeine")
    }.must_output <<-EOS.undent
      local-caffeine: 1.2.3
      http://example.com/local-caffeine
      Not installed
      From: https://github.com/caskroom/homebrew-testcasks/blob/master/Casks/local-caffeine.rb
      ==> Name
      None
      ==> Artifacts
      Caffeine.app (app)
    EOS
  end

  describe "given multiple Casks" do
    before do
      @expected_output = <<-EOS.undent
        local-caffeine: 1.2.3
        http://example.com/local-caffeine
        Not installed
        From: https://github.com/caskroom/homebrew-testcasks/blob/master/Casks/local-caffeine.rb
        ==> Name
        None
        ==> Artifacts
        Caffeine.app (app)
        local-transmission: 2.61
        http://example.com/local-transmission
        Not installed
        From: https://github.com/caskroom/homebrew-testcasks/blob/master/Casks/local-transmission.rb
        ==> Name
        None
        ==> Artifacts
        Transmission.app (app)
      EOS
    end

    it "displays the info" do
      lambda {
        Hbc::CLI::Info.run("local-caffeine", "local-transmission")
      }.must_output(@expected_output)
    end

    it "throws away stray options" do
      lambda {
        Hbc::CLI::Info.run("--notavalidoption", "local-caffeine", "local-transmission")
      }.must_output(@expected_output)
    end
  end

  it "should print caveats if the Cask provided one" do
    lambda {
      Hbc::CLI::Info.run("with-caveats")
    }.must_output <<-EOS.undent
      with-caveats: 1.2.3
      http://example.com/local-caffeine
      Not installed
      From: https://github.com/caskroom/homebrew-testcasks/blob/master/Casks/with-caveats.rb
      ==> Name
      None
      ==> Artifacts
      Caffeine.app (app)
      ==> Caveats
      Here are some things you might want to know.

      Cask token: with-caveats

      Custom text via puts followed by DSL-generated text:
      To use with-caveats, you may need to add the /custom/path/bin directory
      to your PATH environment variable, eg (for bash shell):

        export PATH=/custom/path/bin:"$PATH"

    EOS
  end

  it 'should not print "Caveats" section divider if the caveats block has no output' do
    lambda {
      Hbc::CLI::Info.run("with-conditional-caveats")
    }.must_output <<-EOS.undent
      with-conditional-caveats: 1.2.3
      http://example.com/local-caffeine
      Not installed
      From: https://github.com/caskroom/homebrew-testcasks/blob/master/Casks/with-conditional-caveats.rb
      ==> Name
      None
      ==> Artifacts
      Caffeine.app (app)
    EOS
  end

  describe "when no Cask is specified" do
    it "raises an exception" do
      lambda {
        Hbc::CLI::Info.run
      }.must_raise Hbc::CaskUnspecifiedError
    end
  end

  describe "when no Cask is specified, but an invalid option" do
    it "raises an exception" do
      lambda {
        Hbc::CLI::Info.run("--notavalidoption")
      }.must_raise Hbc::CaskUnspecifiedError
    end
  end
end
