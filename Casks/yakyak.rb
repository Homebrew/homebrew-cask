cask 'yakyak' do
  version '1.5.1'
  sha256 '0f131b9d754888f5a73bc5984594e1941a2586cc1b574739aa322f07f263fd72'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
