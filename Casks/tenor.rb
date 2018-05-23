cask 'tenor' do
  version '2.0.5'
  sha256 '017a57846ef84ca61268b33a20ec8cf16ac15fc1d520077b76bd498b58cd84fd'

  # media.tenor.co/mac/bin was verified as official when first introduced to the cask
  url 'https://media.tenor.co/mac/bin/GIFforMac.dmg'
  appcast 'https://media.tenor.co/mac/gif_for_mac_appcast.xml',
          checkpoint: '87b4c9a9f4711c97873a90584b95bdf3810011d43a2dd953dc5cf6ac888a1b5f'
  name 'Tenor'
  homepage 'https://tenor.com/mac'

  depends_on macos: '>= :el_capitan'

  app 'Tenor.app'

  uninstall login_item: 'Tenor',
            quit:       'com.riffsy.GIF-for-Mac'
end
