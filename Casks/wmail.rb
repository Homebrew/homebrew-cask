cask 'wmail' do
  version '1.1.3'
  sha256 'dd34f54ac6ddf9ba880684c0c4a167a5c6431cddedc08450580efb25d3c68925'

  url "https://github.com/Thomas101/wmail/releases/download/v#{version}/WMail_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/Thomas101/wmail/releases.atom',
          checkpoint: '29ae09cb121149b32f59e351b2ebcd7e9803a0f772dd1165d90f648e844dd390'
  name 'WMail'
  homepage 'https://github.com/Thomas101/wmail'
  license :mit

  app 'WMail.app'
end
