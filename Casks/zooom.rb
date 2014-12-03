cask :v1 => 'zooom' do
  version :latest
  sha256 :no_check

  url 'http://software.coderage-software.com/zooom/Zooom_Latest.dmg'
  homepage 'http://coderage-software.com/zooom'
  license :unknown

  pkg 'Zooom2.pkg'

  uninstall :pkgutil => 'com.coderage.pkg.Zooom2'

  depends_on :macos => '>= :mavericks'
end
