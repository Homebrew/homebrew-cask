cask 'xact' do
  version '2.48'
  sha256 'c42998dfc1c5fcfec5c81cf3a8715e257aa23232324e102c3d6a644b2188ae0c'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org/'

  app "xACT#{version}/xACT.app"
end
