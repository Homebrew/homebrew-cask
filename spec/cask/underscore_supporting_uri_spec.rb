require 'spec_helper'

describe Cask::UnderscoreSupportingURI do
  describe 'parse' do
    it 'works like normal on normal URLs' do
      uri = Cask::UnderscoreSupportingURI.parse('http://example.com/TestCask.dmg')
      expect(uri).to eq(URI('http://example.com/TestCask.dmg'))
    end

    it 'works just fine on URIs with underscores' do
      uri = Cask::UnderscoreSupportingURI.parse('http://dl_dir.qq.com/qqfile/qq/QQforMac/QQ_V3.0.0.dmg')
      expect(uri.host).to include('_')
      expect(uri.to_s).to eq('http://dl_dir.qq.com/qqfile/qq/QQforMac/QQ_V3.0.0.dmg')
    end
  end
end
