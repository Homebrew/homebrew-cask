cask :v1 => 'zooom' do
  version '2.6.0'
  sha256 'eda52f42d06a6cd32c2fc419358a4a589087a1592a38e717577e3ae9a656036f'

  url "http://software.coderage-software.com/zooom/Zooom_#{version}.dmg"
  homepage 'http://coderage-software.com/zooom'
  license :unknown

  pkg 'Zooom2.pkg'
  uninstall :pkgutil => 'com.coderage.pkg.Zooom2'

  caveats do
    os_version_only '10.9', '10.10'
  end
end
