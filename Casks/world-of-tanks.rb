cask :v1 => 'world-of-tanks' do
  version :latest
  sha256 :no_check

  # wargaming.net is the official download host per the vendor homepage
  url 'http://redirect.wargaming.net/WoT/latest_mac_install_na'
  name 'World Of Tanks'
  appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml',
          :sha256 => 'cae4496330e619d4acb6b00609386431cd59feef241df74e1a9cb2385ed63000'
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
