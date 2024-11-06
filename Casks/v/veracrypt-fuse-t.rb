cask "veracrypt-fuse-t" do
  version "1.26.14"
  sha256 "8f0cee74d5b0d68e57d13d4ffcdbeeca66fa0711c547b3ddd28ecdb1b9549580"

  url "https://launchpad.net/veracrypt/trunk/#{version}/+download/VeraCrypt_FUSE-T_#{version}.dmg",
      verified: "launchpad.net/veracrypt/trunk/"
  name "VeraCrypt (fuse-t)"
  desc "Disk encryption software focusing on security based on TrueCrypt (FUSE-T)"
  homepage "https://www.veracrypt.fr/"

  livecheck do
    url "https://www.veracrypt.fr/en/Downloads.html"
    regex(/href=.*?VeraCrypt_FUSE-T[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on cask: "macos-fuse-t/homebrew-cask/fuse-t"

  pkg "VeraCrypt_Installer.pkg"

  uninstall pkgutil: "com.idrix.pkg.veracrypt"

  zap trash: [
    "~/Library/Application Support/VeraCrypt",
    "~/Library/Preferences/org.idrix.VeraCrypt.plist",
    "~/Library/Saved Application State/org.idrix.VeraCrypt.savedState",
  ]
  caveats <<~EOS
    #{token} requires fuse-t to run. Run the following commands to install:

    brew tap macos-fuse-t/homebrew-cask
    brew install fuse-t

  EOS
end
