cask :v1 => 'world-of-tanks' do
  version :latest
  sha256 :no_check

  # wargaming.net is the official download host per the vendor homepage
  url 'http://redirect.wargaming.net/WoT/latest_mac_install_na'
  name 'World Of Tanks'
  appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml',
          :sha256 => 'ad2bb678e019058df53ff567bc50069e87e1ad1fb0b1dc27b2d2ee26f3f2759e'
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
