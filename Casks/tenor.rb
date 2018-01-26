cask 'tenor' do
  version '2.0.3'
  sha256 '5d3fd1098f5fb01f1ce0e42cb31011c9517c90c4770e0513db69e77099e6db02'

  # media.tenor.co/mac/bin was verified as official when first introduced to the cask
  url 'https://media.tenor.co/mac/bin/GIFforMac.dmg'
  appcast 'https://media.tenor.co/mac/gif_for_mac_appcast.xml',
          checkpoint: '7586e7ae85c17b626297abc252cd543df7b84cc82ab4a5921edbf54893404b32'
  name 'Tenor'
  homepage 'https://tenor.com/mac'

  app 'Tenor.app'

  uninstall login_item: 'Tenor',
            quit:       'com.riffsy.GIF-for-Mac'
end
