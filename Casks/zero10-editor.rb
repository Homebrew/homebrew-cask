class Zero10Editor < Cask
  version :latest
  sha256 :no_check

  url 'http://www.sweetscape.com/download/010EditorMacInstaller.dmg'
  homepage 'http://www.sweetscape.com/'
  license :unknown

  pkg '010 Editor.pkg'
  uninstall :pkgutil => 'com.SweetScape.010Editor.pkg'
end
