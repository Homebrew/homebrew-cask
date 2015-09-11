require 'spec_helper'

describe Hbc::CLI::Cleanup do
  let(:homebrew_cache_location) { Pathname(Dir.mktmpdir).realpath }
  let(:cache_location) { homebrew_cache_location.join('Casks').tap(&:mkdir) }
  let(:cleanup_outdated) { false }

  subject { described_class.new(cache_location, cleanup_outdated) }
  after { homebrew_cache_location.rmtree }

  describe 'cleanup!' do
    it 'removes dead symlinks' do
      bad_symlink = cache_location.join('bad_symlink')
      bad_symlink.make_symlink('../does_not_exist')

      expect {
        subject.cleanup!
      }.to output(<<-OUTPUT.undent).to_stdout
        ==> Removing dead symlinks
        #{bad_symlink}
        ==> Removing cached downloads
        Nothing to do
      OUTPUT

      expect(bad_symlink.symlink?).to eq(false)
    end

    it 'removes cached downloads' do
      cached_download = homebrew_cache_location.join('SomeDownload.dmg')
      FileUtils.touch(cached_download)

      cached_download_symlink = cache_location.join('SomeDownload.dmg')
      cached_download_symlink.make_symlink(cached_download)

      expect {
        subject.cleanup!
      }.to output(<<-OUTPUT.undent).to_stdout
        ==> Removing dead symlinks
        Nothing to do
        ==> Removing cached downloads
        #{cached_download}
        #{cached_download_symlink}
      OUTPUT

      expect(cached_download.exist?).to eq(false)
      expect(cached_download_symlink.symlink?).to eq(false)
    end

    context 'when cleanup_outdated is specified' do
      let(:cleanup_outdated) { true }

      it 'does not remove cache files newer than 10 days old' do
        cached_download = homebrew_cache_location.join('SomeNewDownload.dmg')
        FileUtils.touch(cached_download)

        cached_download_symlink = cache_location.join('SomeNewDownload.dmg')
        cached_download_symlink.make_symlink(cached_download)

        expect {
          subject.cleanup!
        }.to output(<<-OUTPUT.undent).to_stdout
          ==> Removing dead symlinks
          Nothing to do
          ==> Removing cached downloads older than 10 days old
          Nothing to do
        OUTPUT

        expect(cached_download.exist?).to eq(true)
        expect(cached_download_symlink.symlink?).to eq(true)
      end
    end
  end
end

