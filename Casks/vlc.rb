cask :v1 => 'vlc' do
  version '2.2.0'
  sha256 'ad9a322f04a657e25db615bb9eef656dced4ac33180358fd7d4508cdacfc598b'

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '65f7c6b4206bd057a7eb73787180713be58d1adc'
  appcast 'http://update.videolan.org/vlc/sparkle/vlc-intel64.xml',
          :sha256 => '358ea9032ef0df1658c062bfb11ca4336ebf662b64bffec8e059b1e2faa4f788'
  name 'VLC'
  name 'VLC media player'
  homepage 'http://www.videolan.org/vlc/'
  license :oss

  app 'VLC.app'
end
