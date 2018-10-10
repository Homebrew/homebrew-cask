cask 'yakyak' do
  version '1.5.2'
  sha256 '896463e6f1c73e97575e3570f4058619400202b51ebbb6c8aaa6cc9605f6cc34'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
