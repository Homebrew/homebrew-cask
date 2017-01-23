cask 'tikzit' do
  version '1.1'
  sha256 '069e322e675469a774ceba737e5ea1fbe821c5b6fd7573322a3a7699fb0b7fcf'

  url "https://downloads.sourceforge.net/tikzit/TikZiT-osx-#{version}.zip"
  appcast 'http://tikzit.sourceforge.net/appcast/tikzit.xml',
          checkpoint: '2fc201624061d05e5b3ae505e69611fd11824534f28ada3ab4150de98ebca5f3'
  name 'TikZiT'
  homepage 'http://tikzit.sourceforge.net/'

  app 'TikZiT.app'
end
