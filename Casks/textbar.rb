cask 'textbar' do
  version '2.0.482'
  sha256 'e0c43de5a47c04df51ca144a8f7252f728007610423bd4a46eb89af5d0c45264'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          checkpoint: '4d553cc46dc6ad4cc55365f71e79ffd543f5cc7eba57e2c8669c65cfe0adefaa'
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'

  depends_on macos: '>= :mountain_lion'

  app 'TextBar.app'
end
