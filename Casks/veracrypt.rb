cask "veracrypt" do
  version "1.24-Update8"
  sha256 "9edeae9fbf7f1b2eb91ce55ff82481bfd4c099e85c3c88cb6d6dd91b460a3a6b"

  url "https://launchpad.net/veracrypt/trunk/#{version.downcase}/+download/VeraCrypt_#{version}.dmg",
      verified: "launchpad.net/veracrypt/trunk/"
  appcast "https://github.com/veracrypt/VeraCrypt/releases.atom"
  name "VeraCrypt"
  desc "Disk encryption software focusing on security based on TrueCrypt"
  homepage "https://www.veracrypt.fr/"

  depends_on cask: "osxfuse"

  pkg "VeraCrypt_Installer.pkg"

  uninstall pkgutil: "com.idrix.pkg.veracrypt"
end
