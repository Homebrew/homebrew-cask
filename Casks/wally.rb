cask 'wally' do
  version '1.1.1'
  sha256 'd06c1270e9f369b3176d66b94a30b4d7f31c2a4c1c261926c7448ce3f270cf77'

  # github.com was verified as official when first introduced to the cask
  url 'https://github.com/zsa/wally/releases/download/1.1.1-osx/wally-osx-1.1.1.dmg'
  appcast 'https://github.com/zsa/wally/releases.atom'
  name 'Wally'
  homepage 'https://ergodox-ez.com/pages/wally'

  app 'Wally.app'
end
