cask 'textbar' do
  version '2.0.431'
  sha256 'c10b845af90a31ac63ea91e82b959a88ddcd564c6068ab4be66ae514ba32bb7f'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          checkpoint: 'd50ba1b3a2c8e214d7d9aab18a96e51dfd0dd226d77cd4f08ee981d741619241'
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'

  depends_on macos: '>= :mountain_lion'

  app 'TextBar.app'
end
