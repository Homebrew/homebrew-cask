cask :v1 => 'xact' do
  version '2.34'
  sha256 '849e3f1c2be4d4c3d99ba69a9af1dcc1a0593549e85f24773a78f52cb172f7fb'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml',
          :sha256 => '34ffb3d8d71700bf3f497f809b0ef5c7b1ac8ba623c7e337d8e17050616dd367'
  homepage 'http://xact.scottcbrown.org'
  license :unknown

  app "xACT #{version}/xACT.app"
end
