cask 'yakyak' do
  version '1.5.2'
  sha256 '84c9d3b9251cc94e81e407601ab1280e0ca5e38c35fbce043e8e602c1030fec4'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
