cask 'xact' do
  version '2.43'
  sha256 '33d84f323875f165f2ea0e7ba295335cd74efb1b86f272b60d43e3a7ad460ea5'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml',
          checkpoint: 'b0dbdccf2c89725e1b4678de12b7eb81cecc1ba0ab5b6e3397846009e97cad9e'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org/'

  app "xACT#{version}/xACT.app"
end
