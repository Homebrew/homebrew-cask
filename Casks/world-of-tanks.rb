cask 'world-of-tanks' do
  version '1.0.30'
  sha256 '22d96a5eea6cd60fb2e879d8af6bcf9b28958c0ddccb198e8a3388f191273211'

  # wargaming.net was verified as official when first introduced to the cask
  url 'http://redirect.wargaming.net/WoT/latest_mac_install_na'
  appcast 'https://wot.gcdn.co/us/files/osx/WoT_OSX_update_na.xml',
          checkpoint: '84e19ba0bf8fa534ad34ce6b844bc5682f809a935cd4f08bae376997d81f2a1f'
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
