cask 'tenor' do
  version '2.0.2'
  sha256 'c3faf005a6454d4ddfdaa73796ccf86579a7e2a62580e8be85a43e2dba329c59'

  # media.tenor.co/mac/bin was verified as official when first introduced to the cask
  url 'https://media.tenor.co/mac/bin/GIFforMac.dmg'
  appcast 'https://media.tenor.co/mac/gif_for_mac_appcast.xml',
          checkpoint: '5730b07c9aa3ddf9964a14ac5f905ba26c74f80496a5d00066f5a8926aa54d0d'
  name 'Tenor'
  homepage 'https://tenor.com/mac'

  app 'Tenor.app'

  uninstall login_item: 'Tenor',
            quit:       'com.riffsy.GIF-for-Mac'
end
