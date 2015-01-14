cask :v1 => 'tinyumbrella' do
  version '7.04'
  sha256 '2ce5ea70bbdf216aaff9fc30c1a33a58a6fc19a5ad5e4f0029aafae61c622db1'

  url "http://cache.firmwareumbrella.com/downloads/TinyUmbrella-#{version}.00.app.zip"
  homepage 'http://blog.firmwareumbrella.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TinyUmbrella.app'
end
