cask 'vlc' do
  version '2.2.1'
  sha256 'ef881ca19fc7cc6b7c54699c99c064b9a5d553aa4181d1d1e185758d32405740'

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  appcast 'http://update.videolan.org/vlc/sparkle/vlc-intel64.xml',
          :sha256 => '8124c4204920da829739b6e9fed326de75cc2023c624e3f7af8a74aed5045f24'
  name 'VLC media player'
  homepage 'https://www.videolan.org/vlc/'
  license :oss
  gpg "#{url}.asc",
      :key_id => '65f7c6b4206bd057a7eb73787180713be58d1adc'

  app 'VLC.app'
end
