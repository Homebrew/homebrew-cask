cask 'voodoopad' do
  version '5.2.1'
  sha256 'ef5b3c219e687a7c3428a2e9467488f9dd14ffcf055701f552709f5de17a14ba'

  # voodoopad.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://voodoopad.s3.amazonaws.com/VoodooPad-#{version}.zip"
  appcast "https://www.primatelabs.com/appcast/voodoopad#{version.major}.xml"
  name 'VoodooPad'
  homepage 'https://www.voodoopad.com/'

  depends_on macos: '>= :lion'

  app 'VoodooPad.app'
end
