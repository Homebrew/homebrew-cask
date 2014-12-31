cask :v1 => 'vlc' do
  version '2.1.5'
  sha256 '923504e296829f4253af8276b992636f72e56232ecdbdcf6003647ee662257f2'

  url "https://get.videolan.org/vlc/#{version}/macosx/vlc-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '65f7c6b4206bd057a7eb73787180713be58d1adc'
  appcast 'http://update.videolan.org/vlc/sparkle/vlc-intel64.xml',
          :sha256 => '358ea9032ef0df1658c062bfb11ca4336ebf662b64bffec8e059b1e2faa4f788'
  homepage 'http://www.videolan.org/vlc/'
  license :oss

  app 'VLC.app'
end
