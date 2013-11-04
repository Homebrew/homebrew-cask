require 'test_helper'

describe Cask::UnderscoreSupportingURI do
  describe 'parse' do
    it 'works like normal on normal URLs' do
      uri = Cask::UnderscoreSupportingURI.parse('http://example.com/TestCask.dmg')
      uri.must_equal URI('http://example.com/TestCask.dmg')
    end

    it 'works just fine on URIs with underscores' do
      uri = Cask::UnderscoreSupportingURI.parse('http://dl_dir.qq.com/qqfile/qq/QQforMac/QQ_V3.0.0.dmg')
      uri.host.must_include '_'
      uri.to_s.must_equal 'http://dl_dir.qq.com/qqfile/qq/QQforMac/QQ_V3.0.0.dmg'
    end
  end
end
