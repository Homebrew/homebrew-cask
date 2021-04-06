cask "vip-access" do
  version "1.0.7"
  sha256 :no_check

  url "https://com-symantec-vip-us-east-2-prd-idcenter-downloads-v2.s3.amazonaws.com/VIPAccessSecurityCode.dmg",
      verified: "com-symantec-vip-us-east-2-prd-idcenter-downloads-v2.s3.amazonaws.com/"
  name "Symantec VIP Access"
  homepage "https://vip.symantec.com/"

  depends_on macos: ">= :el_capitan"

  pkg "VIP Access.pkg"

  uninstall pkgutil: "com.symantec.vippaccess"

  zap trash: [
    "~/Library/Caches/com.symantec.VIP-Access",
    "~/Library/Preferences/com.symantec.VIP-Access.plist",
  ]
end
