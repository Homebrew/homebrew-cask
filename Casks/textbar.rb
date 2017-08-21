cask 'textbar' do
  version '2.0.523'
  sha256 '9a929d94d1caf1230dfb9eaa3b31b4efcc2aa23b50c9be3ee3ab9588b97bb2ee'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          checkpoint: 'ec2733787571d3fd463b998fc66e9682cfb7626aa569dccfe9c56af888668f6b'
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'

  depends_on macos: '>= :mountain_lion'

  app 'TextBar.app'
end
