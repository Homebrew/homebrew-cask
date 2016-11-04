cask 'webarchiveplayer' do
  version '1.4.5'
  sha256 '1c814f221b01c957c4a7a15da3136536608315da00b2cb428c789eaf3c384d2e'

  url "https://github.com/ikreymer/webarchiveplayer/raw/master/app/osx/webarchiveplayer.dmg"
  appcast 'https://github.com/ikreymer/webarchiveplayer/releases.atom',
          checkpoint: 'afa19ab62477ff8a21dde5e4704c78e1ae2d6ba027c43d53d13e6d970c3a38e6'
  name 'webarchiveplayer'
  homepage 'https://github.com/ikreymer/webarchiveplayer'

  app 'webarchiveplayer.app'
end
