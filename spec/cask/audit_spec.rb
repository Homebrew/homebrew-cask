require "spec_helper"

describe Hbc::Audit do
  include AuditMatchers
  include Sha256Helper

  let(:cask) { instance_double(Hbc::Cask) }
  let(:download) { false }
  let(:check_token_conflicts) { false }
  let(:fake_system_command) { class_double(Hbc::SystemCommand) }
  let(:audit) {
    Hbc::Audit.new(cask, download:              download,
                         check_token_conflicts: check_token_conflicts,
                         command:               fake_system_command)
  }

  describe "#result" do
    subject { audit.result }

    context "when there are errors" do
      before do
        audit.add_error "bad"
      end

      it { should match(%r{failed}) }
    end

    context "when there are warnings" do
      before do
        audit.add_warning "eh"
      end

      it { should match(%r{warning}) }
    end

    context "when there are errors and warnings" do
      before do
        audit.add_error "bad"
        audit.add_warning "eh"
      end

      it { should match(%r{failed}) }
    end

    context "when there are no errors or warnings" do
      it { should match(%r{passed}) }
    end
  end

  describe "#run!" do
    let(:cask) { Hbc.load(cask_token) }
    subject { audit.run! }

    describe "required stanzas" do
      %w[version sha256 url name homepage license].each do |stanza|
        context "when missing #{stanza}" do
          let(:cask_token) { "missing-#{stanza}" }
          it { should fail_with(%r{#{stanza} stanza is required}) }
        end
      end
    end

    describe "version checks" do
      let(:error_msg) { "you should use version :latest instead of version 'latest'" }

      context "when version is 'latest'" do
        let(:cask_token) { "version-latest-string" }
        it { should fail_with(error_msg) }
      end

      context "when version is :latest" do
        let(:cask_token) { "version-latest-with-checksum" }
        it { should_not fail_with(error_msg) }
      end
    end

    describe "sha256 checks" do
      context "when version is :latest and sha256 is not :no_check" do
        let(:cask_token) { "version-latest-with-checksum" }
        it { should fail_with("you should use sha256 :no_check when version is :latest") }
      end

      context "when sha256 is not a legal SHA-256 digest" do
        let(:cask_token) { "invalid-sha256" }
        it { should fail_with("sha256 string must be of 64 hexadecimal characters") }
      end

      context "when sha256 is sha256 for empty string" do
        let(:cask_token) { "sha256-for-empty-string" }
        it { should fail_with(%r{cannot use the sha256 for an empty string}) }
      end
    end

    describe "appcast checks" do
      context "when appcast has no sha256" do
        let(:cask_token) { "appcast-missing-checkpoint" }
        it { should fail_with(%r{checkpoint sha256 is required for appcast}) }
      end

      context "when appcast checkpoint is not a string of 64 hexadecimal characters" do
        let(:cask_token) { "appcast-invalid-checkpoint" }
        it { should fail_with(%r{string must be of 64 hexadecimal characters}) }
      end

      context "when appcast checkpoint is sha256 for empty string" do
        let(:cask_token) { "appcast-checkpoint-sha256-for-empty-string" }
        it { should fail_with(%r{cannot use the sha256 for an empty string}) }
      end

      context "when appcast checkpoint is valid sha256" do
        let(:cask_token) { "appcast-valid-checkpoint" }
        it { should_not fail_with(%r{appcast :checkpoint}) }
      end

      context "when verifying appcast HTTP code" do
        let(:cask_token) { "appcast-valid-checkpoint" }
        let(:download) { instance_double(Hbc::Download) }
        let(:wrong_code_msg) { %r{unexpected HTTP response code} }
        let(:curl_error_msg) { %r{error retrieving appcast} }
        let(:fake_curl_result) { instance_double(Hbc::SystemCommand::Result) }

        before do
          allow(audit).to receive(:check_appcast_checkpoint_accuracy)
          allow(fake_system_command).to receive(:run).and_return(fake_curl_result)
          allow(fake_curl_result).to receive(:success?).and_return(success)
        end

        context "when curl succeeds" do
          let(:success) { true }

          before do
            allow(fake_curl_result).to receive(:stdout).and_return(stdout)
          end

          context "when HTTP code is 200" do
            let(:stdout) { "200" }
            it { should_not warn_with(wrong_code_msg) }
          end

          context "when HTTP code is not 200" do
            let(:stdout) { "404" }
            it { should warn_with(wrong_code_msg) }
          end
        end

        context "when curl fails" do
          let(:success) { false }

          before do
            allow(fake_curl_result).to receive(:stderr).and_return("Some curl error")
          end

          it { should warn_with(curl_error_msg) }
        end
      end

      context "when verifying appcast checkpoint" do
        let(:cask_token) { "appcast-valid-checkpoint" }
        let(:download) { instance_double(Hbc::Download) }
        let(:mismatch_msg) { %r{appcast checkpoint mismatch} }
        let(:curl_error_msg) { %r{error retrieving appcast} }
        let(:fake_curl_result) { instance_double(Hbc::SystemCommand::Result) }
        let(:expected_checkpoint) { "d5b2dfbef7ea28c25f7a77cd7fa14d013d82b626db1d82e00e25822464ba19e2" }

        before do
          allow(audit).to receive(:check_appcast_http_code)
          allow(fake_system_command).to receive(:run).and_return(fake_curl_result)
          allow(fake_curl_result).to receive(:success?).and_return(success)
        end

        context "when appcast download succeeds" do
          let(:success) { true }
          let(:appcast_text) { instance_double(::String) }

          before do
            allow(fake_curl_result).to receive(:stdout).and_return(appcast_text)
            allow(appcast_text).to receive(:gsub).and_return(appcast_text)
            allow(appcast_text).to receive(:end_with?).with("\n").and_return(true)
            allow(Digest::SHA2).to receive(:hexdigest).and_return(actual_checkpoint)
          end

          context "when appcast checkpoint is out of date" do
            let(:actual_checkpoint) { random_sha256 }
            it { should warn_with(mismatch_msg) }
            it { should_not warn_with(curl_error_msg) }
          end

          context "when appcast checkpoint is up to date" do
            let(:actual_checkpoint) { expected_checkpoint }
            it { should_not warn_with(mismatch_msg) }
            it { should_not warn_with(curl_error_msg) }
          end
        end

        context "when appcast download fails" do
          let(:success) { false }

          before do
            allow(fake_curl_result).to receive(:stderr).and_return("Some curl error")
          end

          it { should warn_with(curl_error_msg) }
        end
      end
    end

    describe "preferred download URL formats" do
      let(:warning_msg) { %r{URL format incorrect} }

      context "with incorrect SourceForge URL format" do
        let(:cask_token) { "sourceforge-incorrect-url-format" }
        it { should warn_with(warning_msg) }
      end

      context "with correct SourceForge URL format" do
        let(:cask_token) { "sourceforge-correct-url-format" }
        it { should_not warn_with(warning_msg) }
      end

      context "with correct SourceForge URL format for version :latest" do
        let(:cask_token) { "sourceforge-version-latest-correct-url-format" }
        it { should_not warn_with(warning_msg) }
      end

      context "with incorrect OSDN URL format" do
        let(:cask_token) { "osdn-incorrect-url-format" }
        it { should warn_with(warning_msg) }
      end

      context "with correct OSDN URL format" do
        let(:cask_token) { "osdn-correct-url-format" }
        it { should_not warn_with(warning_msg) }
      end
    end

    describe "generic artifact checks" do
      context "with no target" do
        let(:cask_token) { "generic-artifact-no-target" }
        it { should fail_with(%r{target required for generic artifact}) }
      end

      context "with relative target" do
        let(:cask_token) { "generic-artifact-relative-target" }
        it { should fail_with(%r{target must be absolute path for generic artifact}) }
      end

      context "with absolute target" do
        let(:cask_token) { "generic-artifact-absolute-target" }
        it { should_not fail_with(%r{target required for generic artifact}) }
      end
    end

    describe "url checks" do
      context "given a block" do
        let(:cask_token) { "booby-trap" }

        context "when loading the cask" do
          it "does not evaluate the block" do
            expect { cask }.to_not raise_error
          end
        end

        context "when doing the audit" do
          it "evaluates the block" do
            expect(subject).to fail_with(%r{Boom})
          end
        end
      end
    end

    describe "token conflicts" do
      let(:cask_token) { "with-binary" }
      let(:check_token_conflicts) { true }

      before do
        expect(audit).to receive(:core_formula_names).and_return(formula_names)
      end

      context "when cask token conflicts with a core formula" do
        let(:formula_names) { %w[with-binary other-formula] }
        it { should warn_with(%r{possible duplicate}) }
      end

      context "when cask token does not conflict with a core formula" do
        let(:formula_names) { %w[other-formula] }
        it { should_not warn_with(%r{possible duplicate}) }
      end
    end

    describe "audit of downloads" do
      let(:cask_token) { "with-binary" }
      let(:cask) { Hbc.load(cask_token) }
      let(:download) { instance_double(Hbc::Download) }
      let(:verify) { class_double(Hbc::Verify).as_stubbed_const }
      let(:error_msg) { "Download Failed" }

      context "when download and verification succeed" do
        before do
          download.expects(:perform)
          verify.expects(:all)
        end

        it { should_not fail_with(%r{#{error_msg}}) }
      end

      context "when download fails" do
        before do
          download.expects(:perform).raises(StandardError.new(error_msg))
        end

        it { should fail_with(%r{#{error_msg}}) }
      end

      context "when verification fails" do
        before do
          download.expects(:perform)
          verify.expects(:all).raises(StandardError.new(error_msg))
        end

        it { should fail_with(%r{#{error_msg}}) }
      end
    end

    context "when an exception is raised" do
      let(:cask) { instance_double(Hbc::Cask) }
      before do
        cask.expects(:version).raises(StandardError.new)
      end

      it { should fail_with(%r{exception while auditing}) }
    end
  end
end
