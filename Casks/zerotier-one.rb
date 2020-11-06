cask "zerotier-one" do
  version "1.4.6"
  sha256 "7adfa8a149e20b8649fff805f3af7b2f37b981219b31f7375c2cc3452f9f30a7"

  url "https://download.zerotier.com/dist/ZeroTier%20One.pkg"
  appcast "https://github.com/zerotier/ZeroTierOne/releases.atom"
  name "ZeroTier One"
  homepage "https://www.zerotier.com/download.shtml"

  pkg "ZeroTier One.pkg"

  uninstall pkgutil:   "com.zerotier.pkg.ZeroTierOne",
            launchctl: "com.zerotier.one",
            kext:      "com.zerotier.tap"
end
