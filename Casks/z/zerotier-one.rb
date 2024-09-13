cask "zerotier-one" do
  version "1.14.1"
  sha256 "fc974680cd91b20ee9045a39e271206172d0b887623f5ebbdd322cb3900e7526"

  url "https://download.zerotier.com/RELEASES/#{version}/dist/ZeroTier%20One.pkg"
  name "ZeroTier One"
  desc "Mesh VPN client"
  homepage "https://www.zerotier.com/"

  livecheck do
    url "https://download.zerotier.com/RELEASES/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  depends_on macos: ">= :high_sierra"

  pkg "ZeroTier One.pkg"

  uninstall launchctl: "com.zerotier.one",
            quit:      "com.zerotier.ZeroTier-One",
            pkgutil:   "com.zerotier.pkg.ZeroTierOne"

  zap trash: "~/Library/Preferences/com.zerotier.ZeroTier-One.plist"
end
