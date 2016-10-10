cask 'x-lite' do
  version '4.9.4_80103'
  sha256 '86f00a98b8b842b65ec01c9e2cc1eb41903e187616b5f98100a9d58f313c8f46'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  name 'X-Lite'
  homepage 'https://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
