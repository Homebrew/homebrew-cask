cask 'xee' do
  version '3.5.2'
  sha256 '43e22dc738f9c6d08ccea094acfe66fa0bf89fda1cc69dbf8ec6e6c6aceb63b2'

  url "http://xee.c3.cx/downloads/Xee#{version}.dmg"
  name 'Xee³'
  homepage 'https://xee.c3.cx/'

  app 'Xee³.app'

  zap delete: [
                '~/Library/Application Support/Xee³',
                '~/Library/Caches/cx.c3.Xee3',
                '~/Library/Cookies/cx.c3.Xee3.binarycookies',
                '~/Library/Preferences/cx.c3.Xee3.plist',
              ]
end
