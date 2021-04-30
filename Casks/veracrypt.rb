cask "veracrypt" do
  version "1.24-Update8"
  sha256 "9edeae9fbf7f1b2eb91ce55ff82481bfd4c099e85c3c88cb6d6dd91b460a3a6b"

  url "https://launchpad.net/veracrypt/trunk/#{version.downcase}/+download/VeraCrypt_#{version}.dmg",
      verified: "launchpad.net/veracrypt/trunk/"
  name "VeraCrypt"
  desc "Disk encryption software focusing on security based on TrueCrypt"
  homepage "https://www.veracrypt.fr/"

  livecheck do
    url "https://github.com/veracrypt/VeraCrypt/releases"
    strategy :github_latest
    regex(%r{href=.*?/VeraCrypt_(\d+(?:\.\d+)*[^/]*?)\.dmg}i)
  end

  depends_on cask: "macfuse"

  pkg "VeraCrypt_Installer.pkg"

  uninstall pkgutil: "com.idrix.pkg.veracrypt"
end
