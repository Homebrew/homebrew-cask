cask :v1 => 'yakyak' do
  version '1.1.1'
  sha256 '992197916e36f02cffb5a85ae53b8a61d563a0a818de45bba7ab60d210f6924a'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-osx.app.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'
  license :mit

  app 'Yakyak.app'
end
