cask 'thor' do
  version '1.4.0'
  sha256 '6ac42717aa67d0b6d41629f5b2bdc0d7dcae1fd4e3d4360f98e42f4f49e83235'

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
