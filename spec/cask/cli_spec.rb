require 'spec_helper'

describe Hbc::CLI do
  it "lists the taps for Casks that show up in two taps" do
    listing = Hbc::CLI.nice_listing(%w[
      caskroom/cask/adium
      caskroom/cask/google-chrome
      passcod/homebrew-cask/adium
    ])

    expect(listing).to eq(%w[
      caskroom/cask/adium
      google-chrome
      passcod/cask/adium
    ])
  end

  context ".process" do
    let(:noop_command) { double('CLI::Noop') }

    before do
      allow(Hbc).to receive(:init)
      allow(described_class).to receive(:lookup_command).with('noop').and_return(noop_command)
      allow(noop_command).to receive(:run)
    end

    around do |example|
      shutup { example.run }
    end

    it "passes `--version` along to the subcommand" do
      expect(described_class).to receive(:run_command).with(noop_command, '--version')
      described_class.process(%w[noop --version])
    end

    it "prints help output when subcommand receives `--help` flag" do
      expect(described_class).to receive(:run_command).with('help')
      described_class.process(%w[noop --help])
      expect(Hbc.help).to eq(true)
      Hbc.help = false
    end

    it "respects the env variable when choosing what appdir to create" do
      EnvHelper.with_env_var('HOMEBREW_CASK_OPTS', "--appdir=/custom/appdir") do
        expect(Hbc).to receive(:appdir=).with(Pathname('/custom/appdir'))
        described_class.process('noop')
      end
    end

    it "respects the env variable when choosing a non-default Caskroom location" do
      EnvHelper.with_env_var 'HOMEBREW_CASK_OPTS', "--caskroom=/custom/caskdir" do
        expect(Hbc).to receive(:caskroom=).with(Pathname('/custom/caskdir'))
        described_class.process('noop')
      end
    end

    it "exits with a status of 1 when something goes wrong" do
      allow(described_class).to receive(:lookup_command).and_raise(Hbc::CaskError)
      expect(described_class).to receive(:exit).with(1)
      described_class.process('noop')
    end
  end
end
