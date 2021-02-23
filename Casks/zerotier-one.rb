cask "zerotier-one" do
  version "1.6.4"
  sha256 "3271dfa409dba0cf05578f60c91e5a8981a5aa685692cf4444a2fe756aae7830"

  url "https://download.zerotier.com/RELEASES/1.6.4/dist/ZeroTier%20One.pkg"
  appcast "https://github.com/zerotier/ZeroTierOne/releases.atom"
  name "ZeroTier One"
  desc "Mesh VPN client"
  homepage "https://www.zerotier.com/download.shtml"

  pkg "ZeroTier One.pkg"

  uninstall pkgutil:   "com.zerotier.pkg.ZeroTierOne",
            launchctl: "com.zerotier.one",
            kext:      "com.zerotier.tap"
end
