cask 'world-of-tanks' do
  version '1.0.25'
  sha256 '2efd7dca4b678ad37fda74888ac77a6bf116a4f5979de33a7689a038af69fecc'

  # wargaming.net was verified as official when first introduced to the cask
  url 'http://redirect.wargaming.net/WoT/latest_mac_install_na'
  appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml',
          checkpoint: '3ebe447ffe152d69a6e035b4075af292ff245cee5adfa8e54062df5138c33a42'
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
