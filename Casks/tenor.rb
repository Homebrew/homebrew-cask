cask 'tenor' do
  version '2.0.4'
  sha256 '42c666af0976b1bebdca02f0889071b9a81f5f712795de33db172ec515e0bd07'

  # media.tenor.co/mac/bin was verified as official when first introduced to the cask
  url 'https://media.tenor.co/mac/bin/GIFforMac.dmg'
  appcast 'https://media.tenor.co/mac/gif_for_mac_appcast.xml',
          checkpoint: '3b2af09a9781777e7437c9e5a60bb674194a2cad417f8718ca43534949bc352d'
  name 'Tenor'
  homepage 'https://tenor.com/mac'

  app 'Tenor.app'

  uninstall login_item: 'Tenor',
            quit:       'com.riffsy.GIF-for-Mac'
end
