cask :v1 => 'veracrypt' do
  version '1.0f-2'
  sha256 '91a28808b16a2a6f664b2e22d4f511416154d293ac3dcc576605a4559aabc93f'

  url 'https://a.pomf.cat/fbwbrm.dmg'
  name 'VeraCrypt'
  homepage 'https://veracrypt.codeplex.com/'
  license :oss

  pkg 'VeraCrypt_1.0f-2.pkg'

  uninstall :pkgutil => 'com.idrix.pkg.veracrypt'
end
