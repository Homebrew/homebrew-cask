cask 'textbar' do
  version '1.10.94'
  sha256 '2fc51cee158f841d3ce1700f98de29643d773c71e42c9a44cc36b9c0cf1f908c'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          checkpoint: 'e2b3c14cbdbddeb614d0cd7e080e19f12623450a6955aa3b676b48f9eb2d78b0'
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'

  depends_on macos: '>= :mountain_lion'
  depends_on arch: :x86_64

  app 'TextBar.app'
end
