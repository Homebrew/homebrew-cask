require 'spec_helper'

class CaskMissingUrl < Cask
  version '1.2.3'
  homepage 'http://example.com'
end

class CaskMissingVersion < Cask
  url 'http://localhost/something.dmg'
  homepage 'http://example.com'
end

class CaskMissingHomepage < Cask
  url 'http://localhost/something.dmg'
  version '1.2.3'
end

class CaskSourceForgeIncorrectURLFormat < Cask
  version '1.2.3'
  homepage 'http://sourceforge.net/projects/something/'
  url 'http://sourceforge.net/projects/something/files/Something-1.2.3.dmg/download'
end

class CaskSourceForgeCorrectURLFormat < Cask
  version '1.2.3'
  homepage 'http://sourceforge.net/projects/something/'
  url 'http://downloads.sourceforge.net/project/something/Something-1.2.3.dmg'
end

class CaskSourceForgeOtherCorrectURLFormat < Cask
  version :latest
  homepage 'http://sourceforge.net/projects/something/'
  url 'http://sourceforge.net/projects/something/files/latest/download'
end

class CaskVersionLatestWithChecksum < Cask
  version :latest
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
end

class CaskWithVersionNoChecksum < Cask
  version '1.2.3'
  sha256 :no_check
end

describe Cask::Audit do
  describe "result" do
    it "is 'failed' if there are have been any errors added" do
      audit = Cask::Audit.new(Cask.new)
      audit.add_error 'bad'
      audit.add_warning 'eh'
      expect(audit.result).to match(/failed/)
    end

    it "is 'warning' if there are no errors, but there are warnings" do
      audit = Cask::Audit.new(Cask.new)
      audit.add_warning 'eh'
      expect(audit.result).to match(/warning/)
    end

    it "is 'passed' if there are no errors or warning" do
      audit = Cask::Audit.new(Cask.new)
      expect(audit.result).to match(/passed/)
    end
  end

  describe "run!" do
    describe "required fields" do
      it "adds an error if url is missing" do
        audit = Cask::Audit.new(CaskMissingUrl.new)
        audit.run!
        expect(audit.errors).to include('url is required')
      end

      it "adds an error if version is missing" do
        audit = Cask::Audit.new(CaskMissingVersion.new)
        audit.run!
        expect(audit.errors).to include('version is required')
      end

      it "adds an error if homepage is missing" do
        audit = Cask::Audit.new(CaskMissingHomepage.new)
        audit.run!
        expect(audit.errors).to include('homepage is required')
      end

      it "adds an error if version is latest and using sha256" do
        audit = Cask::Audit.new(CaskVersionLatestWithChecksum.new)
        audit.run!
        expect(audit.errors).to include(%q{you should use sha256 :no_check when version is :latest})
      end

      it "adds an error if versioned and has no checksum" do
        audit = Cask::Audit.new(CaskWithVersionNoChecksum.new)
        audit.run!
        expect(audit.errors).to include(%q{you must include a sha256 when version is not :latest})
      end
    end

    describe "preferred download URL formats" do
      it "adds a warning if SourceForge doesn't use download subdomain" do
        warning_msg = 'SourceForge URL format incorrect. See https://github.com/caskroom/homebrew-cask/blob/master/CONTRIBUTING.md#sourceforge-urls'


        audit = Cask::Audit.new(CaskSourceForgeIncorrectURLFormat.new)
        audit.run!
        expect(audit.warnings).to include(warning_msg)

        audit = Cask::Audit.new(CaskSourceForgeCorrectURLFormat.new)
        audit.run!
        expect(audit.warnings).to_not include(warning_msg)

        audit = Cask::Audit.new(CaskSourceForgeOtherCorrectURLFormat.new)
        audit.run!
        expect(audit.warnings).to_not include(warning_msg)
      end
    end

    describe "audit of downloads" do
      it "creates an error if the download fails" do
        error_message = "Download Failed"
        download = double()
        download.expects(:perform).raises(StandardError.new(error_message))

        audit = Cask::Audit.new(Cask.new)
        audit.run!(download)
        expect(audit.errors).to include(/#{error_message}/)
      end
    end
  end
end
