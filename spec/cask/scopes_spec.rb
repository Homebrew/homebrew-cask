require 'spec_helper'

describe Cask::Scopes do
  describe 'installed' do
    let(:fake_caskroom) { Pathname(Dir.mktmpdir) }

    before do
      allow(Cask).to receive(:caskroom) { fake_caskroom }
    end
    after { fake_caskroom.rmtree }

    it 'returns a list installed Casks by loading Casks for all the dirs that exist in the caskroom' do
      allow(Cask).to receive(:load) { |token| "loaded-#{token}" }

      fake_caskroom.join('cask-bar').mkdir
      fake_caskroom.join('cask-foo').mkdir

      installed_casks = Cask.installed

      expect(Cask).to have_received(:load).with('cask-bar')
      expect(Cask).to have_received(:load).with('cask-foo')
      expect(installed_casks.sort).to eq(%w[
        loaded-cask-bar
        loaded-cask-foo
      ])
    end

    it 'optimizes performance by resolving to a fully qualified path before calling Cask.load' do
      fake_tapped_cask_dir = Pathname(Dir.mktmpdir).join('Casks')
      absolute_path_to_cask = fake_tapped_cask_dir.join('some-cask.rb')

      allow(Cask).to receive(:load)
      allow(Cask).to receive(:all_tapped_cask_dirs) { [fake_tapped_cask_dir] }

      fake_caskroom.join('some-cask').mkdir
      fake_tapped_cask_dir.mkdir
      FileUtils.touch(absolute_path_to_cask)

      Cask.installed

      expect(Cask).to have_received(:load).with(absolute_path_to_cask)
    end
  end
end
