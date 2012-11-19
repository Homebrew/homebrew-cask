require 'test_helper'

describe Cask::Audit do
  describe "result" do
    it "is 'failed' if there are have been any errors added" do
      audit = Cask::Audit.new(mock())
      audit.add_error 'bad'
      audit.add_warning 'eh'
      audit.result.must_match /failed/
    end

    it "is 'warning' if there are no errors, but there are warnings" do
      audit = Cask::Audit.new(mock())
      audit.add_warning 'eh'
      audit.result.must_match /warning/
    end

    it "is 'passed' if there are no errors or warning" do
      audit = Cask::Audit.new(mock())
      audit.result.must_match /passed/
    end
  end

  describe "run!" do
    describe "required fields" do
      it "adds an error if url is missing" do
        audit = Cask::Audit.new(stub(:url => nil, :version => 'something', :homepage => 'something'))
        audit.run!
        audit.errors.must_include 'url is required'
      end

      it "adds an error if version is missing" do
        audit = Cask::Audit.new(stub(:url => 'something', :version => nil, :homepage => 'something'))
        audit.run!
        audit.errors.must_include 'version is required'
      end

      it "adds an error if homepage is missing" do
        audit = Cask::Audit.new(stub(:url => 'something', :version => 'something', :homepage => nil))
        audit.run!
        audit.errors.must_include 'homepage is required'
      end
    end

    describe "request processing" do
      it "adds an error if response is empty" do
        audit = Cask::Audit.new(stub(:url => 'something', :version => 'something', :homepage => 'something'))
        audit.stubs(:_curl).returns('')
        audit.run!
        audit.errors.must_include 'timeout while requesting something'
      end

      it "properly populates the response code and headers from an http response" do
        audit = Cask::Audit.new(stub(
          :url => URI('http://something/file.zip'),
          :version => 'something',
          :homepage => 'something',
          :content_length => '123'
        ))
        audit.stubs(:_curl).returns(<<-RESPONSE.gsub(/^          /, ''))
          HTTP/1.1 200 OK
          Content-Type: application/x-apple-diskimage
          ETag: "b4208f3e84967be4b078ecaa03fba941"
          Content-Length: 23726161
          Last-Modified: Sun, 12 Aug 2012 21:17:21 GMT
        RESPONSE
        audit.run!
        audit.response_status.must_equal 'HTTP/1.1 200 OK'
        audit.headers.must_equal({
          'Content-Type' => 'application/x-apple-diskimage',
          'ETag' => '"b4208f3e84967be4b078ecaa03fba941"',
          'Content-Length' => '23726161',
          'Last-Modified' => 'Sun, 12 Aug 2012 21:17:21 GMT'
        })
      end
    end
  end
end
