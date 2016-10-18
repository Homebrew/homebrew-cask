cask 'veracrypt' do
  version '1.19'
  sha256 'da098bba200d2cebb193bd699eef6dec7834c8eeb579ed40bcd21d45487e6ce7'

  # download-codeplex.sec.s-msft.com/Download/Release?ProjectName=veracrypt was verified as official when first introduced to the cask
  url 'https://download-codeplex.sec.s-msft.com/Download/Release?ProjectName=veracrypt&DownloadId=1614080&FileTime=131212015497000000&Build=21031'
  name 'VeraCrypt'
  homepage 'https://veracrypt.codeplex.com/'

  depends_on cask: 'osxfuse'

  pkg 'VeraCrypt_Installer.pkg'

  uninstall pkgutil: 'com.idrix.pkg.veracrypt'

  caveats <<-EOS.undent
    #{token} requires osxfuse with "MacFUSE Compatibility Layer" enabled.
    If you did not enable that option, #{token} will fail to install.

    To enable the option, you need to install osxfuse manually (double-click the installer).
    The installer should be located under #{Hbc.caskroom}/osxfuse
  EOS
end
