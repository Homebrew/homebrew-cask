require 'spec_helper'

describe Cask::CLI do
  it "lists the taps for Casks that show up in two taps" do
    listing = Cask::CLI.nice_listing(%w[
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

  describe ".process" do
    let(:noop_command) { double('CLI::Noop') }
    before {
      allow(Cask::CLI).to receive(:lookup_command) { noop_command }
      allow(noop_command).to receive(:run)
    }

    it "respects the env variable when choosing what appdir to create" do
      with_env_var('HOMEBREW_CASK_OPTS', "--appdir=/custom/appdir") do
        allow(Cask).to receive(:init) {
          expect(Cask.appdir.to_s).to eq('/custom/appdir')
        }
        Cask::CLI.process('noop')
      end
    end

    it "respects the ENV variable when choosing a non-default Caskroom location" do
      with_env_var 'HOMEBREW_CASK_OPTS', "--caskroom=/custom/caskdir" do
        allow(Cask).to receive(:init) {
          expect(Cask.caskroom.to_s).to eq('/custom/caskdir')
        }
        Cask::CLI.process('noop')
      end
    end

    it "exits with a status of 1 when something goes wrong" do
      Cask::CLI.expects(:exit).with(1)
      Cask::CLI.expects(:lookup_command).raises(CaskError)
      shutup {
        Cask::CLI.process('noop')
      }
    end
  end
end
