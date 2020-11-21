cask "zerotier-one" do
  version "1.6.0"
  sha256 "8dd5377f3105f4a443b71ace3421c88c5b448227b4e69eff5d910d8da3ebc6f5"

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
