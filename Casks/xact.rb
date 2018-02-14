cask 'xact' do
  version '2.44'
  sha256 '5c7c116f0ddef925e15e6be9ca801c4067138c47dbf6b2f81eac176fae4db2c7'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml',
          checkpoint: '0ff9c6d87175313de71d04b72d55652d333eced7ea5065b83c51165b58e2a24f'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org/'

  app "xACT#{version}/xACT.app"
end
