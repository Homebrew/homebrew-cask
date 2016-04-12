cask 'textbar' do
  version '1.10.19'
  sha256 '84ad0a6dee8318b45905a8cc7ab639289d7bb03029c2f06017d6c39085fb119f'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          checkpoint: '5224af26148a4a86288c0762df4e4d890c05ef2c44c23d63d350eb459e35e43a'
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'
  license :closed

  depends_on macos: '>= :mountain_lion'
  depends_on arch: :x86_64

  app 'TextBar.app'
end
