cask "veracrypt" do
  version "1.24-Update7"
  sha256 "9f97436d3967462c28a1c1626ec2d230d121f60d42999101d42e7dd3d4d33336"

  # launchpad.net/veracrypt/trunk/ was verified as official when first introduced to the cask
  url "https://launchpad.net/veracrypt/trunk/#{version.downcase}/+download/VeraCrypt_#{version}.dmg"
  appcast "https://github.com/veracrypt/VeraCrypt/releases.atom"
  name "VeraCrypt"
  desc "Disk encryption software focusing on security based on TrueCrypt"
  homepage "https://www.veracrypt.fr/"

  depends_on cask: "osxfuse"

  pkg "VeraCrypt_Installer.pkg"

  uninstall pkgutil: "com.idrix.pkg.veracrypt"
end
