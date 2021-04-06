cask "zerotier-one" do
  version "1.6.4"
  sha256 "3271dfa409dba0cf05578f60c91e5a8981a5aa685692cf4444a2fe756aae7830"

  url "https://download.zerotier.com/RELEASES/#{version}/dist/ZeroTier%20One.pkg"
  name "ZeroTier One"
  desc "Mesh VPN client"
  homepage "https://www.zerotier.com/download.shtml"

  livecheck do
    url "https://github.com/zerotier/ZeroTierOne"
    strategy :github_latest
  end

  pkg "ZeroTier One.pkg"

  uninstall pkgutil:   "com.zerotier.pkg.ZeroTierOne",
            launchctl: "com.zerotier.one",
            kext:      "com.zerotier.tap"
end
