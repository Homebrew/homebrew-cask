cask :v1 => 'warsow' do
  version '2.0'
  sha256 '07a4975c5c5abeb96ee9c11b53b363fb00aeba5d2a016563862538d28acf3763'

  url "http://update.warsow.net/mirror/warsow_#{version.delete('.')}.dmg"
  name 'Warsow'
  homepage 'http://www.warsow.net/'
  license :gpl

  container :nested => "Warsow #{version}.dmg"

  app "Warsow #{version}.app"
end
