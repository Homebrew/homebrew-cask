cask 'tikzit' do
  version '1.1'
  sha256 '069e322e675469a774ceba737e5ea1fbe821c5b6fd7573322a3a7699fb0b7fcf'

  url "https://downloads.sourceforge.net/tikzit/TikZiT-osx-#{version}.zip"
  appcast 'http://tikzit.sourceforge.net/appcast/tikzit.xml',
          checkpoint: '906cd45032179999523b58eb97a293bf63674ba2193b7932ea3930655e8e1516'
  name 'TikZiT'
  homepage 'http://tikzit.sourceforge.net/'

  app 'TikZiT.app'
end
