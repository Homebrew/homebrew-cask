cask 'vanilla' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/net.matthewpalmer.Vanilla was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/net.matthewpalmer.Vanilla/Vanilla.dmg'
  name 'Vanilla'
  homepage 'http://matthewpalmer.net/vanilla/'

  app 'Vanilla.app'

  zap delete: [
                '~/Library/Application Support/Vanilla',
                '~/Library/Preferences/net.matthewpalmer.Vanilla.plist',
              ]
end
