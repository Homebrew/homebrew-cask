cask :v1 => 'world-of-tanks' do
  version :latest
  sha256 :no_check

  url 'http://redirect.wargaming.net/WoT/latest_mac_install_eu'
  name 'World Of Tanks'
  homepage 'http://worldoftanks.eu/'
  license :unknown    # todo: improve this machine-generated value

  app 'World of Tanks.app'

  zap :delete => '~/Documents/World_of_Tanks'

  caveats <<-EOS.undent
    Cask #{token} is specific to European region; if you’re in a different region, you’ll need to find it in caskroom/versions:
        brew tap caskroom/versions
        brew cask search #{token}
        brew cask install #{token}-<region>
  EOS
end
