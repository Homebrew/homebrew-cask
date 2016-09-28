cask 'thunder' do
  version '2.7.5.2200'
  sha256 '2a9d2afee65c6ca508d66201045acfac7aa65122bf3bf5fb8b2a05ec483a575f'

  # down.sandai.net was verified as official when first introduced to the cask
  url "http://down.sandai.net/mac/thunder_dl#{version}_Beta.dmg"
  name 'Thunder'
  name '迅雷'
  homepage 'http://mac.xunlei.com/'
  license :commercial

  app 'Thunder.app'
end
