require 'spec_helper'

describe Hbc::Scopes do
  describe 'installed' do
    let(:fake_caskroom) { Pathname(Dir.mktmpdir) }

    before do
      allow(Hbc).to receive(:caskroom) { fake_caskroom }
    end
    after { fake_caskroom.rmtree }

    it 'returns a list installed Casks by loading Casks for all the dirs that exist in the caskroom' do
      allow(Hbc).to receive(:load) { |token| "loaded-#{token}" }

      fake_caskroom.join('cask-bar').mkdir
      fake_caskroom.join('cask-foo').mkdir

      installed_casks = Hbc.installed

      expect(Hbc).to have_received(:load).with('cask-bar')
      expect(Hbc).to have_received(:load).with('cask-foo')
      expect(installed_casks).to eq(%w[
        loaded-cask-bar
        loaded-cask-foo
      ])
    end

    it 'optimizes performance by resolving to a fully qualified path before calling Hbc.load' do
      fake_tapped_cask_dir = Pathname(Dir.mktmpdir).join('Casks')
      absolute_path_to_cask = fake_tapped_cask_dir.join('some-cask.rb')

      allow(Hbc).to receive(:load)
      allow(Hbc).to receive(:all_tapped_cask_dirs) { [fake_tapped_cask_dir] }

      fake_caskroom.join('some-cask').mkdir
      fake_tapped_cask_dir.mkdir
      FileUtils.touch(absolute_path_to_cask)

      Hbc.installed

      expect(Hbc).to have_received(:load).with(absolute_path_to_cask)
    end
  end

  describe 'outdated' do
    let(:installed_casks) {[
      double('Cask', name: 'up-to-date', outdated?: false),
      double('Cask', name: 'pretty-old', outdated?: true),
    ]}
    before do
      allow(Hbc).to receive(:installed) { installed_casks }
    end

    it 'returns the list of casks whose installed version does not match the latest available version' do
      expect(Hbc.outdated.map(&:name)).to eq(%w[pretty-old])
    end
  end
end
