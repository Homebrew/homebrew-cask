cask 'world-of-tanks' do
  version '1.0.28'
  sha256 'c63234b25173a5030a17bf6676587ef36bd500c93c3b5f8c53192ae2917400d6'

  # wargaming.net was verified as official when first introduced to the cask
  url 'http://redirect.wargaming.net/WoT/latest_mac_install_na'
  appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml',
          checkpoint: '4310b66d5d1ba3f7361ec08974e36e06c9b1759b0e762dec944656d4295dc756'
  name 'World Of Tanks'
  homepage 'http://worldoftanks.com/'
  license :gratis

  app 'World of Tanks.app'

  zap delete: '~/Documents/World_of_Tanks'

  caveats <<-EOS.undent
    #{token} is specific to North America; if you're in a different region, you'll need to find your version in caskroom/versions
      brew tap caskroom/versions
      brew search #{token}
  EOS
end
