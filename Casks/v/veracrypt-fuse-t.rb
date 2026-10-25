cask "veracrypt-fuse-t" do
  version "1.26.30"
  sha256 "7d99a5bde0df74df357131d3eae50b89b4d943f13058044fc66269ef53c3a7ff"

  url "https://github.com/veracrypt/VeraCrypt/releases/download/VeraCrypt_#{version}/VeraCrypt_FUSE-T_#{version}.dmg"
  name "VeraCrypt Fuse-T"
  desc "Disk encryption software focusing on security based on TrueCrypt"
  homepage "https://www.veracrypt.fr/"

  livecheck do
    url "https://www.veracrypt.fr/en/Downloads.html"
    regex(/href=.*?VeraCrypt[._-]FUSE[._-]T[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  conflicts_with cask: "veracrypt"
  depends_on cask: "fuse-t"
  depends_on :macos

  pkg "VeraCrypt_Installer.pkg"

  uninstall pkgutil: "com.idrix.pkg.veracrypt"

  zap trash: [
    "~/Library/Application Support/VeraCrypt",
    "~/Library/Logs/DiagnosticRepots/VeraCrypt*.ips",
    "~/Library/Preferences/org.idrix.VeraCrypt.plist",
    "~/Library/Saved Application State/org.idrix.VeraCrypt.savedState",
  ]
end
