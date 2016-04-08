cask 'veracrypt' do
  version '1.17'
  sha256 'fa62b0e84f993dc2c58966e4eef91d8fdd3710913f78d62aa352e12187259f89'

  url 'https://download-codeplex.sec.s-msft.com/Download/Release?ProjectName=veracrypt&DownloadId=1537180&FileTime=130999181375130000&Build=21031'
  name 'VeraCrypt'
  homepage 'https://veracrypt.codeplex.com/'
  license :oss

  pkg 'VeraCrypt_Installer.pkg'

  uninstall pkgutil: 'com.idrix.pkg.veracrypt'
end
