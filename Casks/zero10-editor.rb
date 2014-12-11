cask :v1 => 'zero10-editor' do
  version :latest
  sha256 :no_check

  url 'http://www.sweetscape.com/download/010EditorMacInstaller.dmg'
  homepage 'http://www.sweetscape.com/'
  license :unknown    # todo: improve this machine-generated value

  pkg '010 Editor.pkg'

  uninstall :pkgutil => 'com.SweetScape.010Editor.pkg'
end
