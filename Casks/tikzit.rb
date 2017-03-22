cask 'tikzit' do
  version '1.1'
  sha256 '7e00a64fe5c96963ae5b09f1f59698b8b487239c53eed01a3bf012cf024f0686'

  url "https://downloads.sourceforge.net/tikzit/TikZiT-osx-#{version}.zip"
  appcast 'http://tikzit.sourceforge.net/appcast/tikzit.xml',
          checkpoint: '906cd45032179999523b58eb97a293bf63674ba2193b7932ea3930655e8e1516'
  name 'TikZiT'
  homepage 'http://tikzit.sourceforge.net/'

  app 'TikZiT.app'
end
