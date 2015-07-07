cask :v1 => 'tikzit' do
  version '0.8'
  sha256 '6e2721d2b46d16219a0c7abc92c3abfb8a924d8413ac53fde9d10a7465f1559e'

  url "http://downloads.sourceforge.net/sourceforge/tikzit/TikZiT-#{version}.dmg"

  name 'TikZiT'
  appcast 'http://tikzit.sourceforge.net/appcast/tikzit.xml',
          :sha256 => '68a09aa0e3f82a9cd88092ee5a76535fe1928967f03ea5212ec05e63fffb65d3'
  homepage 'http://tikzit.sourceforge.net/'
  license :gpl

  app 'TikZiT.app'
end
