cask "zerotier-one" do
  version "1.10.3"
  sha256 "3743d48db5dc23b85126b1e1d2b3ddf990180009267f28cc2b462e5340c4e741"

  url "https://download.zerotier.com/RELEASES/#{version}/dist/ZeroTier%20One.pkg"
  name "ZeroTier One"
  desc "Mesh VPN client"
  homepage "https://www.zerotier.com/download.shtml"

  livecheck do
    url "https://www.zerotier.com/download/"
    regex(/latest\sversion:\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  pkg "ZeroTier One.pkg"

  uninstall quit:      "com.zerotier.ZeroTier-One",
            pkgutil:   "com.zerotier.pkg.ZeroTierOne",
            launchctl: "com.zerotier.one"

  zap trash: "~/Library/Preferences/com.zerotier.ZeroTier-One.plist"
end
