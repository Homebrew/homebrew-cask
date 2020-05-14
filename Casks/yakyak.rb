cask 'yakyak' do
  version '1.5.6'
  sha256 '72c5d0f9dc66b6037b2d4b14031d48667ce8990a7321f915bfb0b5aa22e8bec1'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
