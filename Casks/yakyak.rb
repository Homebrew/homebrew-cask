cask 'yakyak' do
  version '1.1.1'
  sha256 '992197916e36f02cffb5a85ae53b8a61d563a0a818de45bba7ab60d210f6924a'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-osx.app.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          :sha256 => 'b0198056037364ed6e6ced6b671dda848d1f0791c03943da803041504ab056fa'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'
  license :mit

  app 'Yakyak.app'
end
