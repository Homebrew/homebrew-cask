cask 'world-of-tanks' do
  version '1.0.25'
  sha256 '2efd7dca4b678ad37fda74888ac77a6bf116a4f5979de33a7689a038af69fecc'

  # wargaming.net is the official download host per the vendor homepage
  url 'http://redirect.wargaming.net/WoT/latest_mac_install_na'
  appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml',
          :checkpoint => '39a9e6d2d79bfd1853b7da9f36305cb60474619a36157fc3f39640c25d4d5414'
  name 'World Of Tanks'
  homepage 'http://worldoftanks.com/'
  license :gratis

  app 'World of Tanks.app'

  zap :delete => '~/Documents/World_of_Tanks'

  caveats <<-EOS.undent
    #{token} is specific to North America; if you're in a different region, you'll need to find your version in caskroom/versions
      brew tap caskroom/versions
      brew search #{token}
  EOS
end
