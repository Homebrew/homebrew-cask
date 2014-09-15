class GzippedAsset < TestCask
  url TestHelper.local_binary('gzipped_asset.gz')
  homepage 'http://example.com/gzipped-asset'
  version '1.2.3'
  sha256 '832506ade94b3e41ecdf2162654eb75891a0749803229e82b2e0420fd1b9e8d2'
  app 'gzipped-asset-1.2.3'
end
