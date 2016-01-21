cask 'wmail' do
  version '1.1.3'
  sha256 'dd34f54ac6ddf9ba880684c0c4a167a5c6431cddedc08450580efb25d3c68925'

  url 'https://github.com/Thomas101/wmail/releases/download/v1.1.3/WMail_1_1_3.zip'
  name 'WMail'
  homepage 'https://github.com/Thomas101/wmail'
  license :mit

  app 'WMail.app'
end
