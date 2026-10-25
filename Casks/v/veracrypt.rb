cask "veracrypt" do
  version "1.26.30"
  sha256 "4316eba9a933b2157781713c547a08ecaea02f3d484e302b28be575c4af84aea"

  url "https://github.com/veracrypt/VeraCrypt/releases/download/VeraCrypt_#{version}/VeraCrypt_#{version}.dmg"
  name "VeraCrypt"
  desc "Disk encryption software focusing on security based on TrueCrypt"
  homepage "https://veracrypt.io/"

  livecheck do
    url "https://veracrypt.io/en/Downloads.html"
    regex(/href=.*?VeraCrypt[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  conflicts_with cask: "veracrypt-fuse-t"
  depends_on cask: "macfuse"
  depends_on :macos

  pkg "VeraCrypt_Installer.pkg"

  uninstall pkgutil: "com.idrix.pkg.veracrypt"

  zap trash: [
    "~/Library/Application Support/VeraCrypt",
    "~/Library/Preferences/org.idrix.VeraCrypt.plist",
    "~/Library/Saved Application State/org.idrix.VeraCrypt.savedState",
  ]
end
