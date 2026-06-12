cask "veracrypt" do
  version "1.26.29"
  sha256 "a316c2dcb7f42eb3b0fcccbd305ae1c2abc46df6d79e9e5bf0544719d7774ed4"

  url "https://launchpad.net/veracrypt/trunk/#{version}/+download/VeraCrypt_#{version}.dmg",
      verified: "launchpad.net/veracrypt/trunk/"
  name "VeraCrypt"
  desc "Disk encryption software focusing on security based on TrueCrypt"
  homepage "https://veracrypt.io/"

  livecheck do
    url "https://veracrypt.io/en/Downloads.html"
    regex(/href=.*?VeraCrypt[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  conflicts_with cask: "veracrypt-fuse-t"
  depends_on :macos
  depends_on cask: "macfuse"

  pkg "VeraCrypt_Installer.pkg"

  uninstall pkgutil: "com.idrix.pkg.veracrypt"

  zap trash: [
    "~/Library/Application Support/VeraCrypt",
    "~/Library/Preferences/org.idrix.VeraCrypt.plist",
    "~/Library/Saved Application State/org.idrix.VeraCrypt.savedState",
  ]
end
