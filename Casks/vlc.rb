cask 'vlc' do
  version '2.2.1'
  sha256 'ef881ca19fc7cc6b7c54699c99c064b9a5d553aa4181d1d1e185758d32405740'

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  appcast 'http://update.videolan.org/vlc/sparkle/vlc-intel64.xml',
          checkpoint: '3ae7b86d53f37e58e3b62e38c005022fe9ff69388ac8bf199882f11d54c323a6'
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc/'
  license :oss
  gpg "#{url}.asc",
      key_id: '65f7c6b4206bd057a7eb73787180713be58d1adc'

  app 'VLC.app'
end
