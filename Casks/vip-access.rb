cask "vip-access" do
  version :latest
  sha256 :no_check

  # com-symantec-vip-us-east-2-prd-idcenter-downloads-v2.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://com-symantec-vip-us-east-2-prd-idcenter-downloads-v2.s3.amazonaws.com/VIPAccessSecurityCode.dmg"
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
