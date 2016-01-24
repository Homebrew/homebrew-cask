cask 'wmail' do
  version '1.1.3'
  sha256 'dd34f54ac6ddf9ba880684c0c4a167a5c6431cddedc08450580efb25d3c68925'

  url "https://github.com/Thomas101/wmail/releases/download/v#{version}/WMail_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/Thomas101/wmail/releases.atom',
          checkpoint: '9da35f2d4793417a88d771dc2d5493fc749a65f7d7286d11550aa98775e5f532'
  name 'WMail'
  homepage 'https://github.com/Thomas101/wmail'
  license :mit

  app 'WMail.app'
end
