cask 'textbar' do
  version '2.0.361'
  sha256 'd505d1719fb645c04ce45df68913364019ee72da5fed11d322185a90f0a9a958'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          checkpoint: '64481e3d23de6f16b5a01c0793a5293ecf448030f695b2b123a5176a18bcd28a'
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'

  depends_on macos: '>= :mountain_lion'

  app 'TextBar.app'
end
