cask :v1 => 'vox-preferences-pane' do
  version :latest
  sha256 :no_check

  url 'http://dl.devmate.com/com.coppertino.VoxPrefs/VoxPrefs.dmg'
  homepage 'http://coppertino.com/vox/addon.html'
  license :unknown    # todo: improve this machine-generated value

  prefpane 'Vox Preferences.prefPane'
end
