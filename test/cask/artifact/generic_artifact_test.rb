require 'test_helper'

describe Hbc::Artifact::Artifact do
  let(:cask) {
    Hbc.load('with-generic-artifact').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }
  let(:expected_path) {
    Hbc.appdir.join('Caffeine.app')
  }

  it "fails to install with no target" do
    no_target = Hbc.load('with-generic-artifact-no-target')
    TestHelper.install_without_artifacts(no_target)

    lambda {
      shutup do
        Hbc::Artifact::Artifact.new(no_target).install_phase
      end
    }.must_raise(Hbc::CaskInvalidError)
  end

  it "moves the artifact to the proper directory" do
    shutup do
      Hbc::Artifact::Artifact.new(cask).install_phase
    end

    File.ftype(Hbc.appdir.join('Caffeine.app')).must_equal 'directory'
    File.exist?(cask.staged_path.join('Caffeine.app')).must_equal false
  end

  it "avoids clobbering an existing artifact" do
    FileUtils.touch expected_path

    shutup do
      Hbc::Artifact::Artifact.new(cask).install_phase
    end

    source_path = cask.staged_path.join('Caffeine.app')

    File.identical?(source_path, expected_path).must_equal false
  end
end
