cask 'videobox' do
  version '4.2.2'
  sha256 '8f884ce3cf57b6d9e7b022bcd03e666b2a98cfc42ef51df03246772f9a344fb3'

  url "https://download.tastyapps.com/videobox_#{version}.dmg"
  name 'Videobox'
  homepage 'https://www.tastyapps.com/videobox/'
  license :closed

  app 'Videobox.app'
end
