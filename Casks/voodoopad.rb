cask 'voodoopad' do
  version '5.2.2'
  sha256 '15ea060a90a71e7178403b3deba3cc3c3060053ed2a70f26775ca53326e4c312'

  # voodoopad.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://voodoopad.s3.amazonaws.com/VoodooPad-#{version}.zip"
  appcast "https://www.primatelabs.com/appcast/voodoopad#{version.major}.xml"
  name 'VoodooPad'
  homepage 'https://www.voodoopad.com/'

  depends_on macos: '>= :sierra'

  app 'VoodooPad.app'
end
