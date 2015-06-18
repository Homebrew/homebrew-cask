cask :v1test => 'gzipped-asset' do
  version '1.2.3'
  sha256 '832506ade94b3e41ecdf2162654eb75891a0749803229e82b2e0420fd1b9e8d2'

  url TestHelper.local_binary_url('gzipped_asset.gz')
  homepage 'http://example.com/gzipped-asset'

  app 'gzipped-asset-1.2.3'
end
