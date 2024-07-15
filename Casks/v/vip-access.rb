cask "vip-access" do
  version "1.0.7"
  sha256 :no_check

  url "https://storage.googleapis.com/sedvip-prd-idcenter-downloads/VIPAccessSecurityCode.dmg",
      verified: "storage.googleapis.com/sedvip-prd-idcenter-downloads/"
  name "Symantec VIP Access"
  desc "Two-step authentication software"
  homepage "https://vip.symantec.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :sierra"

  pkg "VIP Access.pkg"

  uninstall pkgutil: "com.symantec.vippaccess"

  zap trash: [
    "~/Library/Caches/com.symantec.VIP-Access",
    "~/Library/Preferences/com.symantec.VIP-Access.plist",
  ]

  caveats do
    requires_rosetta
  end
end
