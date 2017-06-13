cask 'textbar' do
  version '2.0.520'
  sha256 'e23a7e7a0718356c9a6e2fb92e34e2130e36765fb862f7b9d61ff99653535866'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          checkpoint: 'd9ef4e3efdf326b4525890af24d3723a89da3cd36a48b0fce2672b92e2580d98'
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'

  depends_on macos: '>= :mountain_lion'

  app 'TextBar.app'
end
