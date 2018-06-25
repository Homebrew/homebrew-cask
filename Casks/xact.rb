cask 'xact' do
  version '2.45'
  sha256 'ff3a41294e530c887a838734a5cbda19c59fd2a48048c6525bff445e5ff5caac'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org/'

  app "xACT#{version}/xACT.app"
end
