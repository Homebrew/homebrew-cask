cask "veracrypt-fuse-t" do
  version "1.26.31"
  sha256 "eff8b6e7f3da3be2e75f5b0074dc7d1da8f503dff02e9b0698d5af647a1aaf87"

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
