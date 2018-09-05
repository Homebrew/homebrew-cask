cask 'xact' do
  version '2.46'
  sha256 '8d6736203d1e6289f9542e3db0a249c232e1f09c0fe85712a0ab33196ee9de95'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org/'

  app "xACT#{version}/xACT.app"
end
