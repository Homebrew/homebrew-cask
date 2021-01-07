cask "zerotier-one" do
  version "1.0,15"
  sha256 :no_check

  url "https://download.zerotier.com/dist/ZeroTier%20One.pkg"
  name "ZeroTier One"
  desc "Mesh VPN client"
  homepage "https://www.zerotier.com/download.shtml"

  livecheck do
    url "https://github.com/zerotier/ZeroTierOne/releases"
    strategy :github_latest
  end

  pkg "ZeroTier One.pkg"

  uninstall pkgutil:   "com.zerotier.pkg.ZeroTierOne",
            launchctl: "com.zerotier.one",
            kext:      "com.zerotier.tap"
end
