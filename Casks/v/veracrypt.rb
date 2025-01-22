cask "veracrypt" do
  version "1.26.18"
  sha256 "2c69e1a79c6e90d9075955440608c27489ce9b621e7eca395c3f67fdcd7c8294"

  url "https://launchpad.net/veracrypt/trunk/#{version}/+download/VeraCrypt_#{version}.dmg",
      verified: "launchpad.net/veracrypt/trunk/"
  name "VeraCrypt"
  desc "Disk encryption software focusing on security based on TrueCrypt"
  homepage "https://www.veracrypt.fr/"

  livecheck do
    url "https://www.veracrypt.fr/en/Downloads.html"
    regex(/href=.*?VeraCrypt[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on cask: "macfuse"

  pkg "VeraCrypt_Installer.pkg"

  uninstall pkgutil: "com.idrix.pkg.veracrypt"

  zap trash: [
    "~/Library/Application Support/VeraCrypt",
    "~/Library/Preferences/org.idrix.VeraCrypt.plist",
    "~/Library/Saved Application State/org.idrix.VeraCrypt.savedState",
  ]
end
