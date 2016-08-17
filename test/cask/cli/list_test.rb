require "test_helper"

describe Hbc::CLI::List do
  it "lists the installed Casks in a pretty fashion" do
    casks = %w[local-caffeine local-transmission].map { |c| Hbc.load(c) }

    casks.each do |c|
      TestHelper.install_with_caskfile(c)
    end

    lambda {
      Hbc::CLI::List.run
    }.must_output <<-EOS.undent
      local-caffeine
      local-transmission
    EOS
  end

  describe "lists versions" do
    let(:casks) { ["local-caffeine", "local-transmission"] }
    let(:output) {
      <<-EOS.undent
        local-caffeine 1.2.3
        local-transmission 2.61
      EOS
    }

    before(:each) do
      casks.map(&Hbc.method(:load)).each(&TestHelper.method(:install_with_caskfile))
    end

    it "of all installed Casks" do
      lambda {
        Hbc::CLI::List.run("--versions")
      }.must_output(output)
    end

    it "of given Casks" do
      lambda {
        Hbc::CLI::List.run("--versions", "local-caffeine", "local-transmission")
      }.must_output(output)
    end
  end

  describe "when Casks have been renamed" do
    let(:caskroom_path) { Hbc.caskroom.join("ive-been-renamed") }
    let(:staged_path) { caskroom_path.join("latest") }

    before do
      staged_path.mkpath
    end

    after do
      caskroom_path.rmtree
    end

    it "lists installed Casks without backing ruby files (due to renames or otherwise)" do
      lambda {
        Hbc::CLI::List.run
      }.must_output <<-EOS.undent
        ive-been-renamed (!)
      EOS
    end
  end

  describe "given a set of installed Casks" do
    let(:caffeine) { Hbc.load("local-caffeine") }
    let(:transmission) { Hbc.load("local-transmission") }
    let(:casks) { [caffeine, transmission] }

    it "lists the installed files for those Casks" do
      casks.each(&TestHelper.method(:install_without_artifacts_with_caskfile))

      shutup do
        Hbc::Artifact::App.new(transmission).install_phase
      end

      lambda {
        Hbc::CLI::List.run("local-transmission", "local-caffeine")
      }.must_output <<-EOS.undent
      ==> Apps
      #{Hbc.appdir.join('Transmission.app')} (#{Hbc.appdir.join('Transmission.app').abv})
      ==> Apps
      Missing App: #{Hbc.appdir.join('Caffeine.app')}
    EOS
    end
  end
end
