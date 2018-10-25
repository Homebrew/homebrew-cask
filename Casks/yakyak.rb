cask 'yakyak' do
  version '1.5.2'
  sha256 'bdeae777191394e21ec089b856eaca805583d70213f6f03e36d33833bcbc41f2'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
