cask 'yakyak' do
  version '1.5.2'
  sha256 '84e8a6068eb2e2be0c56b14804e8ffa02cf10e7c53ee71758cd542028cccfc2f'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
