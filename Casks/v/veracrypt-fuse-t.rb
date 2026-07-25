cask "veracrypt-fuse-t" do
  version "1.26.29"
  sha256 "86bbc492fc2d77c1e36495eb9b101aed0799ba46a13b086cca1082bc2d43a3b4"

  url "https://launchpad.net/veracrypt/trunk/#{version}/+download/VeraCrypt_FUSE-T_#{version}.dmg",
      verified: "launchpad.net/veracrypt/trunk/"
  name "VeraCrypt Fuse-T"
  desc "Disk encryption software focusing on security based on TrueCrypt"
  homepage "https://www.veracrypt.fr/"

  livecheck do
    url "https://www.veracrypt.fr/en/Downloads.html"
    regex(/href=.*?VeraCrypt[._-]FUSE[._-]T[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  conflicts_with cask: "veracrypt"
  depends_on :macos
  depends_on cask: "fuse-t"

  pkg "VeraCrypt_Installer.pkg"

  uninstall pkgutil: "com.idrix.pkg.veracrypt"

  zap trash: [
    "~/Library/Application Support/VeraCrypt",
    "~/Library/Logs/DiagnosticRepots/VeraCrypt*.ips",
    "~/Library/Preferences/org.idrix.VeraCrypt.plist",
    "~/Library/Saved Application State/org.idrix.VeraCrypt.savedState",
  ]
end
