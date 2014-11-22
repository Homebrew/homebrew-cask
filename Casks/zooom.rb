cask :v1 => 'zooom' do
  version :latest
  sha256 :no_check

  url 'http://software.coderage-software.com/zooom/Zooom_Latest.dmg'
  homepage 'http://coderage-software.com/zooom'
  license :unknown

  pkg 'Zooom2.pkg'

  uninstall :pkgutil => 'com.coderage.pkg.Zooom2'

  caveats do
    os_version_only '10.9', '10.10'
  end
end
