cask "zerotier-one" do
  version "1.10.1"
  sha256 "8bae201edc4e00f2a3686ef391dacc1a2cff05dd2a5ed35cdefe4fbcdfa98911"

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
