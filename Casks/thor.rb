cask 'thor' do
  version '1.5.2'
  sha256 'db2df1e126613b0a10c421b7fc78853d6bed319bfe43c47649eef645dd43bf52'

  url "https://github.com/gbammc/Thor/releases/download/#{version}/Thor_#{version}.zip"
  appcast 'https://github.com/gbammc/Thor/releases.atom'
  name 'Thor'
  homepage 'https://github.com/gbammc/Thor/'

  auto_updates true

  app 'Thor.app'

  uninstall quit: 'me.alvinzhu.Thor'

  zap trash: [
               '~/Library/Application Scripts/me.alvinzhu.Thor',
               '~/Library/Containers/me.alvinzhu.Thor',
             ]
end
