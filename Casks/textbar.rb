cask 'textbar' do
  version '3.2.20'
  sha256 '392406b1cd5fd3dda70a6967bb5136d933da36e4c4d946fa012c4239fcb80616'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          checkpoint: 'a2caaec0620c0effdf29c3a71d552b23d575d8417b846eab48f9575670691d2b'
  name 'TextBar'
  homepage 'http://richsomerfield.com/apps/'

  depends_on macos: '>= :mountain_lion'

  app 'TextBar.app'
end
