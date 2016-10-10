cask 'vox-preferences-pane' do
  version '1.2.19,1424543567'
  sha256 '335f4efa929fe63f09d2417c5074250a3b9af61ef7fb2f69947c638ba2e79a69'

  # devmate.com/com.coppertino.VoxPrefs was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coppertino.VoxPrefs/#{version.before_comma}/#{version.after_comma}/VoxPrefs-#{version.before_comma}.zip"
  appcast 'http://updateinfo.devmate.com/com.coppertino.VoxPrefs/updates.xml',
          checkpoint: 'c5d5496d2f6dd7567cb3b32535847b5d8cb403289bcdce458b977cb2df496da3'
  name 'VOX Preferences'
  homepage 'https://coppertino.com/addon'

  prefpane 'Vox Preferences.prefPane'
end
