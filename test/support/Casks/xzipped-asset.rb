test_cask 'xzipped-asset' do
  version '1.2.3'
  sha256 '839263f474edde1d54a9101606e6f0dc9d963acc93f6dcc5af8d10ebc3187c02'

  url TestHelper.local_binary_url('xzipped-asset.xz')
  homepage 'http://example.com/xzipped-asset'

  depends_on formula: 'xz'

  app 'xzipped-asset--1.2.3'
end
