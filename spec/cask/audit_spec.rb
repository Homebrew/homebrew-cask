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

      it "adds an error if version is latest and using sha256" do
        audit = Hbc::Audit.new(Hbc.load('version-latest-with-checksum'))
        audit.run!
        expect(audit.errors).to include(%q{you should use sha256 :no_check when version is :latest})
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
