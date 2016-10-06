cask 'world-of-tanks' do
  version '1.0.34'
  sha256 '22d96a5eea6cd60fb2e879d8af6bcf9b28958c0ddccb198e8a3388f191273211'

  # wargaming.net was verified as official when first introduced to the cask
  url 'http://redirect.wargaming.net/WoT/latest_mac_install_na'
  appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml',
          checkpoint: '1e3ca625cca19f523265c07c2f2beef750b2b4dc22446d75ecb15e67964a5847'
  name 'World Of Tanks'
  homepage 'https://worldoftanks.com/'
  license :gratis

  app 'World of Tanks.app'

  zap delete: '~/Documents/World_of_Tanks'

  caveats <<-EOS.undent
    #{token} is specific to North America; if you're in a different region, you'll need to find your version in caskroom/versions
      brew tap caskroom/versions
      brew search #{token}
  EOS
end
