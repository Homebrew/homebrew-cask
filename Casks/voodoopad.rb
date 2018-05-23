cask 'voodoopad' do
  version '5.2.0'
  sha256 '2aee788f666b7b1109f173914e0cce1d40b991c79c1500af8e749c6abee65d37'

  # voodoopad.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://voodoopad.s3.amazonaws.com/VoodooPad-#{version}.zip"
  appcast 'https://www.voodoopad.com/download/',
          checkpoint: '3d4dc6d9679d7dff6744c4f7bfa1300705071df0393272e42e67ce9619e09b94'
  name 'VoodooPad'
  homepage 'https://www.voodoopad.com/'

  depends_on macos: '>= :lion'

  app 'VoodooPad.app'
end
