class BzippedAsset < TestCask
  version '1.2.3'
  sha256 'eaf67b3a62cb9275f96e45d05c70b94bef9ef1dae344083e93eda6b0b388a61c'

  url TestHelper.local_binary_url('bzipped_asset.bz2')
  homepage 'http://example.com/bzipped-asset'

  app 'bzipped-asset-1.2.3'
end
