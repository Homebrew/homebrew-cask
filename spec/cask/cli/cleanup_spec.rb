require "spec_helper"

describe Hbc::CLI::Cleanup do
  let(:cache_location) { Pathname.new(Dir.mktmpdir).realpath }
  let(:cleanup_outdated) { false }

  subject { described_class.new(cache_location, cleanup_outdated) }

  after do
    cache_location.rmtree
  end

  describe "cleanup!" do
    it "removes cached downloads" do
      cached_download = cache_location.join("SomeDownload.dmg")
      FileUtils.touch(cached_download)
      cleanup_size = subject.disk_cleanup_size

      expect {
        subject.cleanup!
      }.to output(<<-OUTPUT.undent).to_stdout
        ==> Removing cached downloads
        #{cached_download}
        ==> This operation has freed approximately #{disk_usage_readable(cleanup_size)} of disk space.
      OUTPUT

      expect(cached_download.exist?).to eq(false)
    end

    it "does not removed locked files" do
      cached_download = cache_location.join("SomeDownload.dmg")
      FileUtils.touch(cached_download)
      cleanup_size = subject.disk_cleanup_size

      File.new(cached_download).flock(File::LOCK_EX)

      expect(Hbc::Utils).to be_file_locked(cached_download)

      expect {
        subject.cleanup!
      }.to output(<<-OUTPUT.undent).to_stdout
        ==> Removing cached downloads
        skipping: #{cached_download} is locked
        ==> This operation has freed approximately #{disk_usage_readable(cleanup_size)} of disk space.
      OUTPUT

      expect(cached_download.exist?).to eq(true)
    end

    context "when cleanup_outdated is specified" do
      let(:cleanup_outdated) { true }

      it "does not remove cache files newer than 10 days old" do
        cached_download = cache_location.join("SomeNewDownload.dmg")
        FileUtils.touch(cached_download)

        expect {
          subject.cleanup!
        }.to output(<<-OUTPUT.undent).to_stdout
          ==> Removing cached downloads older than 10 days old
          Nothing to do
        OUTPUT

        expect(cached_download.exist?).to eq(true)
      end
    end
  end
end
