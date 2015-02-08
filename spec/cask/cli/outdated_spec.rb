require 'spec_helper'

describe Hbc::CLI::Outdated do
  describe '.help' do
    it 'describes outdated properly' do
      expect(described_class.help).to eq('lists installed casks that have an upgraded version available')
    end
  end

  describe '.run' do
    let(:outdated_casks) {[
      double('Cask', to_s: 'pretty-old'),
      double('Cask', to_s: 'cask-needs-upgrade-badly'),
    ]}
    before do
      allow(Hbc).to receive(:outdated) { outdated_casks }
    end
    it 'lists the outdated casks' do
      expect {
        described_class.run
      }.to output(<<-OUTPUT.gsub(/ */, '')).to_stdout
        pretty-old
        cask-needs-upgrade-badly
      OUTPUT
    end
  end
end
