cask :v1 => 'xca' do
  version '0.9.3'
  sha256 'f2daef9c1be16c9ff57613b13f32d015944187c6971467e13857fe3f50889222'

  url "http://downloads.sourceforge.net/sourceforge/xca/xca-#{version}_x86.dmg"
  homepage 'http://xca.sourceforge.net/'
  license :oss

  app 'xca.app'
end
