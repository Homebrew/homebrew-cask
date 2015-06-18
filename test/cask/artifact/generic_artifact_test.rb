require 'test_helper'

describe Hbc::Artifact::Artifact do
  let(:cask) {
    Hbc.load('with-generic-artifact').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }
  let(:expected_path) {
    # todo 'artifact' should be changed to require a :target, in
    #      which case it will no longer default to Hbc.appdir
    #      as below
    Hbc.appdir.join('Caffeine.app')
  }

  it "links the artifact to the proper directory" do
    shutup do
      Hbc::Artifact::Artifact.new(cask).install_phase
    end

    TestHelper.valid_alias?(expected_path).must_equal true
  end

  it "avoids clobbering an existing artifact by linking over it" do
    FileUtils.touch expected_path

    shutup do
      Hbc::Artifact::Artifact.new(cask).install_phase
    end

    expected_path.wont_be :symlink?
  end

  it "clobbers an existing symlink" do
    expected_path.make_symlink('/tmp')

    shutup do
      Hbc::Artifact::Artifact.new(cask).install_phase
    end

    File.readlink(expected_path).wont_equal '/tmp'
  end
end
