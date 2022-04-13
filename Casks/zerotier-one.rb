cask "zerotier-one" do
  version "1.8.8"
  sha256 "d1a7916211bf97c22b371d60ead3a4d1141fa01bc565cf915d66a5bfe9459b2c"

  url "https://download.zerotier.com/RELEASES/#{version}/dist/ZeroTier%20One.pkg"
  name "ZeroTier One"
  desc "Mesh VPN client"
  homepage "https://www.zerotier.com/download.shtml"

  livecheck do
    url "https://github.com/zerotier/ZeroTierOne"
    strategy :github_latest
  end

  pkg "ZeroTier One.pkg"

  uninstall quit:      "com.zerotier.ZeroTier-One",
            pkgutil:   "com.zerotier.pkg.ZeroTierOne",
            launchctl: "com.zerotier.one"

  zap trash: "~/Library/Preferences/com.zerotier.ZeroTier-One.plist"
end
