cask 'vox-preferences-pane' do
  version '1.2.19'
  sha256 '9f29732dd7441c5dd18024838ed46a968499ad39529ad41be1664ee315a20ee6'

  # devmate.com/com.coppertino.VoxPrefs was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.VoxPrefs/VoxPrefs.dmg'
  appcast 'http://updateinfo.devmate.com/com.coppertino.VoxPrefs/updates.xml',
          checkpoint: 'c5d5496d2f6dd7567cb3b32535847b5d8cb403289bcdce458b977cb2df496da3'
  name 'VOX Preferences'
  homepage 'https://vox.rocks/mac-music-player/control-extension-download'

  prefpane 'Vox Preferences.prefPane'
end
