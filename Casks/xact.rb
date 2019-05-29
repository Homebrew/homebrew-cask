cask 'xact' do
  version '2.47'
  sha256 '76074593c88a6bae7d938fc794768af5284fc7262085bd757af99405ca98e9a8'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org/'

  app "xACT#{version}/xACT.app"
end
