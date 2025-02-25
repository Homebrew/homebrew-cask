cask "veracrypt" do
  version "1.26.20"
  sha256 "0685b55f0ca1ad47020301de1b1f1008c8142864c4a1f5e48eb69a914a34f9af"

  url "https://launchpad.net/veracrypt/trunk/#{version}/+download/VeraCrypt_#{version}.dmg",
      verified: "launchpad.net/veracrypt/trunk/"
  name "VeraCrypt"
  desc "Disk encryption software focusing on security based on TrueCrypt"
  homepage "https://www.veracrypt.fr/"

  livecheck do
    url "https://www.veracrypt.fr/en/Downloads.html"
    regex(/href=.*?VeraCrypt[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  conflicts_with cask: "veracrypt-fuse-t"
  depends_on cask: "macfuse"

  pkg "VeraCrypt_Installer.pkg"

  uninstall pkgutil: "com.idrix.pkg.veracrypt"

  zap trash: [
    "~/Library/Application Support/VeraCrypt",
    "~/Library/Preferences/org.idrix.VeraCrypt.plist",
    "~/Library/Saved Application State/org.idrix.VeraCrypt.savedState",
  ]

  caveats <<~EOS
    #{if OS.mac? && Hardware::CPU.arm?
        "Warning: VeraCrypt Fuse-T is recommended for ARM-based Apple Silicon systems. Consider installing cask/veracrypt-fuse-t instead. See: https://www.veracrypt.fr/en/Downloads.html"
    end}
  EOS
end
