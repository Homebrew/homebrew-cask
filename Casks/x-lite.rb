cask 'x-lite' do
  version '5.5.0_97576'
  sha256 '85a0b7e48a12bb6d4aecf48b0180f9fd2a5f491bd6170bbf5d8350cdbc56e582'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'https://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
