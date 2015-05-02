cask :v1 => 'warsow' do
  version '1.51'
  sha256 '4d1a95f94769e0ec9dc70a000a3b461a0968cb5d8e45f5b6850607a99a058449'

  url "http://update.warsow.net/mirror/warsow_#{version}.dmg.zip"
  name 'Warsow'
  homepage 'http://www.warsow.net/'
  license :gpl

  container :nested => "Warsow #{version}.dmg"

  app "Warsow #{version}.app"
end
