require 'spec_helper'

describe Hbc::Audit do
  include AuditMatchers

  let(:cask) { instance_double(Hbc::Cask) }
  let(:download) { false }
  let(:audit) { Hbc::Audit.new(cask, download) }

  describe "#result" do
    subject { audit.result }

    context 'when there are errors' do
      before { audit.add_error 'bad' }
      it { should match(/failed/) }
    end

    context 'when there are warnings' do
      before { audit.add_warning 'eh' }
      it { should match(/warning/) }
    end

    context 'when there are errors and warnings' do
      before do
        audit.add_error 'bad'
        audit.add_warning 'eh'
      end

      it { should match(/failed/) }
    end

    context 'when there are no errors or warnings' do
      it { should match(/passed/) }
    end
  end

  describe "#run!" do
    let(:cask) { Hbc.load(cask_token) }
    subject { audit.run! }

    describe "required stanzas" do
      %w[version sha256 url name homepage license].each do |stanza|
        context "when missing #{stanza}" do
          let(:cask_token) { "missing-#{stanza}" }
          it { should fail_with(/#{stanza} stanza is required/) }
        end
      end
    end

    describe "version checks" do
      let(:error_msg) { "you should use version :latest instead of version 'latest'" }

      context "when version is 'latest'" do
        let(:cask_token) { 'version-latest-string' }
        it { should fail_with(error_msg) }
      end

      context "when version is :latest" do
        let(:cask_token) { 'version-latest-with-checksum' }
        it { should_not fail_with(error_msg) }
      end
    end

    describe "sha256 checks" do
      context "when version is :latest and sha256 is not :no_check" do
        let(:cask_token) { 'version-latest-with-checksum' }
        it { should fail_with('you should use sha256 :no_check when version is :latest') }
      end

      context "when sha256 is not a legal SHA-256 digest" do
        let(:cask_token) { 'invalid-sha256' }
        it { should fail_with('sha256 string must be of 64 hexadecimal characters') }
      end

      context "when sha256 is sha256 for empty string" do
        let(:cask_token) { 'sha256-for-empty-string' }
        it { should fail_with(/cannot use the sha256 for an empty string/) }
      end
    end

    describe "appcast checks" do
      context "when appcast has no sha256" do
        let(:cask_token) { 'appcast-missing-checkpoint' }
        it { should fail_with('a checkpoint sha256 is required for appcast') }
      end

      context "when appcast checkpoint is not a string of 64 hexadecimal characters" do
        let(:cask_token) { 'appcast-invalid-checkpoint' }
        it { should fail_with('sha256 string must be of 64 hexadecimal characters') }
      end

      context "when appcast checkpoint is sha256 for empty string" do
        let(:cask_token) { 'appcast-checkpoint-sha256-for-empty-string' }
        it { should fail_with(/cannot use the sha256 for an empty string/) }
      end
    end

    describe "preferred download URL formats" do
      let(:warning_msg) { /URL format incorrect/ }

      context "with incorrect SourceForge URL format" do
        let(:cask_token) { 'sourceforge-incorrect-url-format' }
        it { should warn_with(warning_msg) }
      end

      context "with correct SourceForge URL format" do
        let(:cask_token) { 'sourceforge-correct-url-format' }
        it { should_not warn_with(warning_msg) }
      end

      context "with correct SourceForge URL format for version :latest" do
        let(:cask_token) { 'sourceforge-version-latest-correct-url-format' }
        it { should_not warn_with(warning_msg) }
      end

      context "with incorrect OSDN URL format" do
        let(:cask_token) { 'osdn-incorrect-url-format' }
        it { should warn_with(warning_msg) }
      end

      context "with correct OSDN URL format" do
        let(:cask_token) { 'osdn-correct-url-format' }
        it { should_not warn_with(warning_msg) }
      end
    end

    describe "generic artifact checks" do
      context "with no target" do
        let(:cask_token) { 'generic-artifact-no-target' }
        it { should fail_with(/target required for generic artifact/) }
      end

      context "with relative target" do
        let(:cask_token) { 'generic-artifact-relative-target' }
        it { should fail_with(/target must be absolute path for generic artifact/) }
      end

      context "with absolute target" do
        let(:cask_token) { 'generic-artifact-absolute-target' }
        it { should_not fail_with(/target required for generic artifact/) }
      end
    end

    describe "url checks" do
      context "given a block" do
        let(:cask_token) { 'booby-trap' }

        context "when loading the cask" do
          it "does not evaluate the block" do
            expect { cask }.to_not raise_error
          end
        end

        context "when doing the audit" do
          it "evaluates the block" do
            expect { subject }.to raise_error("Boom")
          end
        end
      end
    end

    describe "audit of downloads" do
      let(:cask_token) { 'with-binary' }
      let(:cask) { Hbc.load(cask_token) }
      let(:download) { instance_double(Hbc::Download) }
      let(:verify) { class_double(Hbc::Verify).as_stubbed_const }
      let(:error_msg) { "Download Failed" }

      context "when download and verification succeed" do
        before do
          download.expects(:perform)
          verify.expects(:all)
        end

        it { should_not fail_with(/#{error_msg}/) }
      end

      context "when download fails" do
        before do
          download.expects(:perform).raises(StandardError.new(error_msg))
        end

        it { should fail_with(/#{error_msg}/) }
      end

      context "when verification fails" do
        before do
          download.expects(:perform)
          verify.expects(:all).raises(StandardError.new(error_msg))
        end

        it { should fail_with(/#{error_msg}/) }
      end
    end
  end
end
