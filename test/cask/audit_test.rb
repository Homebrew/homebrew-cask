require 'test_helper'

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

describe Cask::Audit do
  describe "result" do
    it "is 'failed' if there are have been any errors added" do
      audit = Cask::Audit.new(TestHelper.test_cask)
      audit.add_error 'bad'
      audit.add_warning 'eh'
      audit.result.must_match /failed/
    end

    it "is 'warning' if there are no errors, but there are warnings" do
      audit = Cask::Audit.new(TestHelper.test_cask)
      audit.add_warning 'eh'
      audit.result.must_match /warning/
    end

    it "is 'passed' if there are no errors or warning" do
      audit = Cask::Audit.new(TestHelper.test_cask)
      audit.result.must_match /passed/
    end
  end

  describe "run!" do
    describe "required fields" do
      it "adds an error if url is missing" do
        audit = Cask::Audit.new(CaskMissingUrl.new)
        audit.run!
        audit.errors.must_include 'url is required'
      end

      it "adds an error if version is missing" do
        audit = Cask::Audit.new(CaskMissingVersion.new)
        audit.run!
        audit.errors.must_include 'version is required'
      end

      it "adds an error if homepage is missing" do
        audit = Cask::Audit.new(CaskMissingHomepage.new)
        audit.run!
        audit.errors.must_include 'homepage is required'
      end
    end

  end
end
