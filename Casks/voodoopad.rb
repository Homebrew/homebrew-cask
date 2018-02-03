cask 'voodoopad' do
  version '5.1.8'
  sha256 '42da5a41c1759f2d2b66a5395decf5fc3a8a6f441bbd34f8afdececeb32de337'

  # voodoopad.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://voodoopad.s3.amazonaws.com/VoodooPad-#{version}.zip"
  appcast 'https://www.voodoopad.com/download/',
          checkpoint: '41636efe3ee458a3f6fb06ad08d589bed545a6a1cab46832dfd0652f6c1916cf'
  name 'VoodooPad'
  homepage 'https://www.voodoopad.com/'

  depends_on macos: '>= :lion'

  app 'VoodooPad.app'
end
