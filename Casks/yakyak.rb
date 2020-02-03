cask 'yakyak' do
  version '1.5.4'
  sha256 '7efbbb86e817868b8f5698adf6cc7a2053e8b628286416f0eeedb7e2dc6e3aaf'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
