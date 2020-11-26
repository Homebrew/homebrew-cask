cask "zerotier-one" do
  version "1.6.1"
  sha256 "9b87cf8f502bead3df6a9702ad94b29c13329405b6963328f8f05c3749cfe07a"

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
