cask "veracrypt-fuse-t" do
  version "1.26.20"
  sha256 "25d94e9e145c48a16762d226e3a0117b66aa29adf16b5336658b8c02941a0e42"

  url "https://launchpad.net/veracrypt/trunk/#{version}/+download/VeraCrypt_FUSE-T_#{version}.dmg",
      verified: "launchpad.net/veracrypt/trunk/"
  name "VeraCrypt Fuse-T"
  desc "Disk encryption software focusing on security based on TrueCrypt"
  homepage "https://www.veracrypt.fr/"
  license "Apache-2.0"

  livecheck do
    url "https://www.veracrypt.fr/en/Downloads.html"
    regex(/href=.*?VeraCrypt_FUSE-T[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on cask: "macos-fuse-t/cask/fuse-t"

  conflicts_with cask: "veracrypt"

  pkg "VeraCrypt_Installer.pkg"

  uninstall pkgutil: "com.idrix.pkg.veracrypt"

  zap trash: [
    "~/Library/Application Support/VeraCrypt",
    "~/Library/Preferences/org.idrix.VeraCrypt.plist",
    "~/Library/Logs/DiagnosticRepots/VeraCrypt*.ips",
    "~/Library/Saved Application State/org.idrix.VeraCrypt.savedState",
  ]
end
