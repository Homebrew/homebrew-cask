cask "zerotier-one" do
  version "1.6.2"
  sha256 "e4963aa5015b86f6e9ca5ac3da4e4f75981094a66c48b5b2f14d146782d6edb9"

  url "https://download.zerotier.com/dist/ZeroTier%20One.pkg"
  appcast "https://github.com/zerotier/ZeroTierOne/releases.atom"
  name "ZeroTier One"
  desc "Mesh VPN client"
  homepage "https://www.zerotier.com/download.shtml"

  pkg "ZeroTier One.pkg"

  uninstall pkgutil:   "com.zerotier.pkg.ZeroTierOne",
            launchctl: "com.zerotier.one",
            kext:      "com.zerotier.tap"
end
