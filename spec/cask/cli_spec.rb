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

  describe ".process" do
    let(:noop_command) { double('CLI::Noop') }
    before {
      allow(Hbc::CLI).to receive(:lookup_command) { noop_command }
      allow(noop_command).to receive(:run)
    }

    it "respects the env variable when choosing what appdir to create" do
      EnvHelper.with_env_var('HOMEBREW_CASK_OPTS', "--appdir=/custom/appdir") do
        allow(Hbc).to receive(:init) {
          expect(Hbc.appdir.to_s).to eq('/custom/appdir')
        }
        Hbc::CLI.process('noop')
      end
    end

    # todo: merely invoking init causes an attempt to create the caskroom directory
    #
    # it "respects the ENV variable when choosing a non-default Caskroom location" do
    #   EnvHelper.with_env_var 'HOMEBREW_CASK_OPTS', "--caskroom=/custom/caskdir" do
    #     allow(Hbc).to receive(:init) {
    #       expect(Hbc.caskroom.to_s).to eq('/custom/caskdir')
    #     }
    #     Hbc::CLI.process('noop')
    #   end
    # end

    it "exits with a status of 1 when something goes wrong" do
      Hbc::CLI.expects(:exit).with(1)
      Hbc::CLI.expects(:lookup_command).raises(Hbc::CaskError)
      allow(Hbc).to receive(:init) {
        shutup {
          Hbc::CLI.process('noop')
        }
      }
    end
  end
end
