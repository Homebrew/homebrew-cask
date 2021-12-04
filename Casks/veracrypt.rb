cask "veracrypt" do
  version "1.25.4"
  sha256 "0af273555cbd82573f0f3182c178fefe61436e7260f4dc1a778efd9e786802ea"

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

  zap trash: [
    "~/Library/Application Support/VeraCrypt",
    "~/Library/Preferences/org.idrix.VeraCrypt.plist",
    "~/Library/Saved Application State/org.idrix.VeraCrypt.savedState",
  ]
end
