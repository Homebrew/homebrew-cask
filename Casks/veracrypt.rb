cask 'veracrypt' do
  version '1.18a'
  sha256 'b7c6b1a321a5f712b3bce13523c26f2fe7caa7a4062c01e5be9eba4779bd524b'

  # download-codeplex.sec.s-msft.com/Download/Release?ProjectName=veracrypt was verified as official when first introduced to the cask
  url 'https://download-codeplex.sec.s-msft.com/Download/Release?ProjectName=veracrypt&DownloadId=1601965&FileTime=131159523657700000&Build=21031'
  name 'VeraCrypt'
  homepage 'https://veracrypt.codeplex.com/'
  license :oss

  depends_on cask: 'osxfuse'

  pkg 'VeraCrypt_Installer.pkg'

  uninstall pkgutil: 'com.idrix.pkg.veracrypt'
end
