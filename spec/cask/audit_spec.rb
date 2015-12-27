require 'spec_helper'

describe Hbc::Audit do
  describe "result" do
    it "is 'failed' if there are have been any errors added" do
      audit = Hbc::Audit.new(Hbc::Cask.new)
      audit.add_error 'bad'
      audit.add_warning 'eh'
      expect(audit.result).to match(/failed/)
    end

    it "is 'warning' if there are no errors, but there are warnings" do
      audit = Hbc::Audit.new(Hbc::Cask.new)
      audit.add_warning 'eh'
      expect(audit.result).to match(/warning/)
    end

    it "is 'passed' if there are no errors or warning" do
      audit = Hbc::Audit.new(Hbc::Cask.new)
      expect(audit.result).to match(/passed/)
    end
  end

  describe "run!" do
    describe "required fields" do
      it "adds an error if url is missing" do
        audit = Hbc::Audit.new(Hbc.load('missing-url'))
        audit.run!
        expect(audit.errors).to include('a url stanza is required')
      end

      it "adds an error if version is missing" do
        audit = Hbc::Audit.new(Hbc.load('missing-version'))
        audit.run!
        expect(audit.errors).to include('a version stanza is required')
      end

      it "adds an error if homepage is missing" do
        audit = Hbc::Audit.new(Hbc.load('missing-homepage'))
        audit.run!
        expect(audit.errors).to include('a homepage stanza is required')
      end

      it "adds an error if license is missing" do
        audit = Hbc::Audit.new(Hbc.load('missing-license'))
        audit.run!
        expect(audit.errors).to include('a license value is required (:unknown is OK)')
      end

      it "adds an error if name is missing" do
        audit = Hbc::Audit.new(Hbc.load('missing-name'))
        audit.run!
        expect(audit.errors).to include('at least one name stanza is required')
      end
    end

    describe "sha256 checks" do
      it "adds an error if version is :latest and sha256 is not :no_check" do
        audit = Hbc::Audit.new(Hbc.load('version-latest-with-checksum'))
        audit.run!
        expect(audit.errors).to include('you should use sha256 :no_check when version is :latest')
      end

      it "adds an error if sha256 is not a string of 64 hexadecimal characters" do
        audit = Hbc::Audit.new(Hbc.load('invalid-sha256'))
        audit.run!
        expect(audit.errors).to include('sha256 string must be of 64 hexadecimal characters')
      end

      it "adds an error if sha256 is sha256 for empty string" do
        audit = Hbc::Audit.new(Hbc.load('sha256-for-empty-string'))
        audit.run!
        expect(audit.errors).to include('cannot use the sha256 for an empty string: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855')
      end
    end

    describe "preferred download URL formats" do
      it "adds a warning if SourceForge doesn't use download subdomain" do
        warning_msg = 'SourceForge URL format incorrect. See https://github.com/caskroom/homebrew-cask/blob/master/CONTRIBUTING.md#sourceforge-urls'


        audit = Hbc::Audit.new(Hbc.load('sourceforge-incorrect-url-format'))
        audit.run!
        expect(audit.warnings).to include(warning_msg)

        audit = Hbc::Audit.new(Hbc.load('sourceforge-correct-url-format'))
        audit.run!
        expect(audit.warnings).to_not include(warning_msg)

        audit = Hbc::Audit.new(Hbc.load('sourceforge-other-correct-url-format'))
        audit.run!
        expect(audit.warnings).to_not include(warning_msg)
      end
    end

    describe "audit of downloads" do
      it "creates an error if the download fails" do
        error_message = "Download Failed"
        download = double()
        download.expects(:perform).raises(StandardError.new(error_message))

        audit = Hbc::Audit.new(Hbc::Cask.new)
        audit.run!(download)
        expect(audit.errors).to include(/#{error_message}/)
      end
    end
  end
end
