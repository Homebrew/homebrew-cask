test_cask 'lzma-asset' do
  version '1.2.3'
  sha256 '9d7edb32d02ab9bd9749a5bde8756595ea4cfcb1da02ca11c30fb591d4c1ed85'

  url TestHelper.local_binary_url('lzma-asset.lzma')
  homepage 'http://example.com/xzipped-asset'

  depends_on formula: 'lzma'

  app 'lzma-asset--1.2.3'
end
