cask "veracrypt-fuse-t" do
  version "1.26.24"
  sha256 "500d6994c6125590d508046766adeecccd1bf9aac856f60cf2f1869abe4d1ae4"

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
