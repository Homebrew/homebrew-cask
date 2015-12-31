require 'spec_helper'

describe Hbc::Audit do
  include AuditMatchers

  let(:cask) { Hbc::Cask.new }
  let(:download) { false }
  let(:audit) { Hbc::Audit.new(cask, download) }

  describe "#result" do
    subject { audit.result }

    it "is 'failed' if there are have been any errors added" do
      audit.add_error 'bad'
      audit.add_warning 'eh'
      expect(subject).to match(/failed/)
    end

    it "is 'warning' if there are no errors, but there are warnings" do
      audit.add_warning 'eh'
      expect(subject).to match(/warning/)
    end

    it "is 'passed' if there are no errors or warning" do
      expect(subject).to match(/passed/)
    end
  end

  describe "#run!" do
    let(:cask) { Hbc.load(cask_token) }
    subject { audit.run! }

    describe "required stanzas" do
      %w[version sha256 url name homepage license].each do |stanza|
        context "missing #{stanza}" do
          let(:cask_token) { "missing-#{stanza}" }
          it { should fail_with(/#{stanza} stanza is required/) }
        end
      end
    end

    describe "sha256 checks" do
      context "version is :latest and sha256 is not :no_check" do
        let(:cask_token) { 'version-latest-with-checksum' }
        it { should fail_with('you should use sha256 :no_check when version is :latest') }
      end

      context "sha256 is not a legal SHA-256 digest" do
        let(:cask_token) { 'invalid-sha256' }
        it { should fail_with('sha256 string must be of 64 hexadecimal characters') }
      end

      context "sha256 is sha256 for empty string" do
        let(:cask_token) { 'sha256-for-empty-string' }
        it { should fail_with(/cannot use the sha256 for an empty string/) }
      end
    end

    describe "appcast checks" do
      context "appcast has no sha256" do
        let(:cask_token) { 'appcast-missing-sha256' }
        it { should fail_with('a sha256 is required for appcast') }
      end

      context "appcast sha256 is not a string of 64 hexadecimal characters" do
        let(:cask_token) { 'appcast-invalid-sha256' }
        it { should fail_with('sha256 string must be of 64 hexadecimal characters') }
      end

      context "appcast sha256 is sha256 for empty string" do
        let(:cask_token) { 'appcast-sha256-for-empty-string' }
        it { should fail_with(/cannot use the sha256 for an empty string/) }
      end
    end

    describe "preferred download URL formats" do
      let(:warning_msg) { /URL format incorrect/ }

      context "incorrect SourceForge URL format" do
        let(:cask_token) { 'sourceforge-incorrect-url-format' }
        it { should warn_with(warning_msg) }
      end

      context "correct SourceForge URL format" do
        let(:cask_token) { 'sourceforge-correct-url-format' }
        it { should_not warn_with(warning_msg) }
      end

      context "correct SourceForge URL format for version :latest" do
        let(:cask_token) { 'sourceforge-other-correct-url-format' }
        it { should_not warn_with(warning_msg) }
      end

      context "incorrect OSDN URL format" do
        let(:cask_token) { 'osdn-incorrect-url-format' }
        it { should warn_with(warning_msg) }
      end

      context "correct OSDN URL format" do
        let(:cask_token) { 'osdn-correct-url-format' }
        it { should_not warn_with(warning_msg) }
      end
    end

    describe "audit of downloads" do
      let(:cask) { Hbc::Cask.new }
      let(:download) { instance_double(Hbc::Download) }
      let(:verify) { class_double(Hbc::Verify).as_stubbed_const }
      let(:error_msg) { "Download Failed" }

      context "download and verification succeed" do
        before do
          download.expects(:perform)
          verify.expects(:all)
        end

        it { should_not fail_with(/#{error_msg}/) }
      end

      context "download fails" do
        before do
          download.expects(:perform).raises(StandardError.new(error_msg))
        end

        it { should fail_with(/#{error_msg}/) }
      end

      context "verification fails" do
        before do
          download.expects(:perform)
          verify.expects(:all).raises(StandardError.new(error_msg))
        end

        it { should fail_with(/#{error_msg}/) }
      end
    end
  end
end
