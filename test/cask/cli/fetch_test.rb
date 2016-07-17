require "test_helper"

describe Hbc::CLI::Fetch do
  let(:local_transmission) {
    Hbc.load("local-transmission")
  }

  let(:local_caffeine) {
    Hbc.load("local-caffeine")
  }

  it "allows download the installer of a Cask" do
    shutup do
      Hbc::CLI::Fetch.run("local-transmission", "local-caffeine")
    end
    Hbc::CurlDownloadStrategy.new(local_transmission).cached_location.must_be :exist?
    Hbc::CurlDownloadStrategy.new(local_caffeine).cached_location.must_be :exist?
  end

  it "prevents double fetch (without nuking existing installation)" do
    download_stategy = Hbc::CurlDownloadStrategy.new(local_transmission)

    shutup do
      Hbc::Download.new(local_transmission).perform
    end
    old_ctime = File.stat(download_stategy.cached_location).ctime

    shutup do
      Hbc::CLI::Fetch.run("local-transmission")
    end
    new_ctime = File.stat(download_stategy.cached_location).ctime

    old_ctime.to_i.must_equal new_ctime.to_i
  end

  it "allows double fetch with --force" do
    shutup do
      Hbc::Download.new(local_transmission).perform
    end

    download_stategy = Hbc::CurlDownloadStrategy.new(local_transmission)
    old_ctime = File.stat(download_stategy.cached_location).ctime
    sleep(1)

    shutup do
      Hbc::CLI::Fetch.run("local-transmission", "--force")
    end
    download_stategy = Hbc::CurlDownloadStrategy.new(local_transmission)
    new_ctime = File.stat(download_stategy.cached_location).ctime

    # new_ctime.to_i.must_be :>, old_ctime.to_i
    new_ctime.to_i.must_be :>, old_ctime.to_i
  end

  it "properly handles Casks that are not present" do
    lambda {
      shutup do
        Hbc::CLI::Fetch.run("notacask")
      end
    }.must_raise Hbc::CaskUnavailableError
  end

  describe "when no Cask is specified" do
    it "raises an exception" do
      lambda {
        Hbc::CLI::Fetch.run
      }.must_raise Hbc::CaskUnspecifiedError
    end
  end

  describe "when no Cask is specified, but an invalid option" do
    it "raises an exception" do
      lambda {
        Hbc::CLI::Fetch.run("--notavalidoption")
      }.must_raise Hbc::CaskUnspecifiedError
    end
  end
end
