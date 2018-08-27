cask 'weflow' do
  version '1.3.3'
  sha256 '83befebc3f122c26789bf7c8d41ac0a490fe6d215717c4c98e26a27536ee65e0'

  # github.com/Tencent/WeFlow was verified as official when first introduced to the cask
  url "https://github.com/Tencent/WeFlow/releases/download/#{version}/WeFlow-#{version}.dmg"
  appcast 'https://github.com/Tencent/WeFlow/releases.atom'
  name 'WeFlow'
  homepage 'https://weflow.io/'

  app 'WeFlow.app'
end
