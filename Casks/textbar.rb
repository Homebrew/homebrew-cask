cask 'textbar' do
  version '3.2.96'
  sha256 '38ef0e9729a2882ff8788ae0fcf92a017235b9895f86ec53892b04cbf8c46d92'

  url "http://richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://richsomerfield.com/apps/textbar/sparkle_textbar.xml'
  name 'TextBar'
  homepage 'http://richsomerfield.com/apps/'

  depends_on macos: '>= :mountain_lion'

  app 'TextBar.app'
end
