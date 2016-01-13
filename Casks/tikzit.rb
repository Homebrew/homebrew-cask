cask 'tikzit' do
  version '0.8'
  sha256 '6e2721d2b46d16219a0c7abc92c3abfb8a924d8413ac53fde9d10a7465f1559e'

  url "http://downloads.sourceforge.net/sourceforge/tikzit/TikZiT-#{version}.dmg"
  appcast 'http://tikzit.sourceforge.net/appcast/tikzit.xml',
          :checkpoint => '9c2aaa1625d7aa5cf261d4f222db0610d906c53ea721e69cb25aa39478b723ae'
  name 'TikZiT'
  homepage 'http://tikzit.sourceforge.net/'
  license :gpl

  app 'TikZiT.app'
end
