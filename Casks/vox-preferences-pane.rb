cask 'vox-preferences-pane' do
  version '1.3.8'
  sha256 '27f3ca138f5360efa795cabd3961998acf52ad534257bd0655222409ef9d4498'

  # devmate.com/com.coppertino.VoxPrefs was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.VoxPrefs/VoxPrefs.dmg'
  appcast 'http://updateinfo.devmate.com/com.coppertino.VoxPrefs/updates.xml',
          checkpoint: 'f0e62eb9fa14eda0bf00e5298ae4ccff8f1126eb42642d8e4cee341af93e9e16'
  name 'VOX Preferences'
  homepage 'https://vox.rocks/mac-music-player/control-extension-download'

  prefpane 'Vox Preferences.prefPane'
end
