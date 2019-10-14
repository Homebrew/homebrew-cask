cask 'yakyak' do
  version '1.5.3'
  sha256 '741c7ac0831093fea1c26359092e3f9c873ae4600e75a0a822c5f193e58feeb1'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
