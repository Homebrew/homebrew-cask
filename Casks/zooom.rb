cask 'zooom' do
  version :latest
  sha256 :no_check

  url 'http://software.coderage-software.com/zooom/Zooom_Latest.dmg'
  name 'Zooom/2'
  homepage 'http://coderage-software.com/zooom'
  license :commercial

  depends_on macos: '>= :mavericks'

  pkg 'Zooom2.pkg'

  uninstall pkgutil: 'com.coderage.pkg.Zooom2'

  caveats do
    "There are known issues with installing this package, so if installation fails you may need to run the installer at #{staged_path}/Zooom2.pkg manually."
  end
end
