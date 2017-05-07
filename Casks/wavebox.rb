cask 'wavebox' do
  version '3.1.7'
  sha256 '9bd8771e38afce30da3c479be9efe017efdd31d9576047e962c98684e636912c'

  # github.com/wavebox/waveboxapp was verified as official when first introduced to the cask
  url "https://github.com/wavebox/waveboxapp/releases/download/v#{version}/Wavebox_#{version.dots_to_underscores}_osx.dmg"
  appcast 'https://github.com/wavebox/waveboxapp/releases.atom',
          checkpoint: '58fd6317e947ee500e3642115399be99281063b18251e12cd98123556ff6d256'
  name 'Wavebox'
  homepage 'https://wavebox.io/'

  app 'Wavebox.app'

  uninstall quit:       'io.wavebox.wavebox',
            login_item: 'Wavebox'

  zap delete: [
                '~/Library/Application Support/wavebox',
                '~/Library/Caches/io.wavebox.wavebox',
                '~/Library/Caches/io.wavebox.wavebox.ShipIt',
                '~/Library/Preferences/io.wavebox.wavebox.helper.plist',
                '~/Library/Preferences/io.wavebox.wavebox.plist',
                '~/Library/Saved Application State/io.wavebox.wavebox.savedState',
              ]
end
