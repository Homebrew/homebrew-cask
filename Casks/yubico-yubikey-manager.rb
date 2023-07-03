cask "yubico-yubikey-manager" do
  version "1.2.5"
  sha256 "009d1ea2ddf98da0ea748df65c2dc88ae16106a684f444a25a49f542413f8732"

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  name "Yubikey Manager"
  desc "Application for configuring any YubiKey"
  homepage "https://developers.yubico.com/yubikey-manager-qt/"

  livecheck do
    url "https://developers.yubico.com/yubikey-manager-qt/Releases/"
    regex(/href=.*?yubikey[._-]manager[._-]qt[._-]v?(\d+(?:\.\d+)+[a-z]?)[._-]mac\.pkg/i)
  end

  depends_on macos: ">= :sierra"

  pkg "yubikey-manager-qt-#{version}-mac.pkg"

  uninstall quit:    "com.yubico.ykman",
            pkgutil: "com.yubico.ykman"

  zap trash: [
        "~/Library/Caches/Yubico/YubiKey Manager",
        "~/Library/Preferences/com.org-yubico.YubiKey Manager.plist",
        "~/Library/Saved Application State/com.yubico.ykman.savedState",
      ],
      rmdir: "~/Library/Caches/Yubico"
end
