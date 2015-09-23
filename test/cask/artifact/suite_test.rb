require 'test_helper'

describe Hbc::Artifact::Suite do
  let(:cask) {
    Hbc.load('with-suite').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }
  let(:expected_path) {
    Hbc.appdir.join('caffeine_suite')
  }
  let(:source_path) { cask.staged_path.join('caffeine_suite') }

  it "moves the suite to the proper directory" do
    shutup do
      Hbc::Artifact::Suite.new(cask).install_phase
    end

    expected_path.must_be :directory?
    TestHelper.valid_alias?(expected_path).must_equal false
    File.exist?(source_path).must_equal false
  end

  it "creates a suite containing the expected app" do
    shutup do
      Hbc::Artifact::Suite.new(cask).install_phase
    end

    expected_path.join('Caffeine.app').must_be :exist?
  end

  it "avoids clobbering an existing suite by moving over it" do
    FileUtils.touch expected_path

    shutup do
      Hbc::Artifact::Suite.new(cask).install_phase
    end

    File.identical?(source_path, expected_path).must_equal false
  end
end
