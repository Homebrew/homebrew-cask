cask "zerotier-one" do
  version "1.10.6"
  sha256 "a1ff5720ee46f49fe949c8261dbc05d4dc283016d204b6abfb802654ed775c20"

  url "https://download.zerotier.com/RELEASES/#{version}/dist/ZeroTier%20One.pkg"
  name "ZeroTier One"
  desc "Mesh VPN client"
  homepage "https://www.zerotier.com/"

  livecheck do
    url "https://www.zerotier.com/download/"
    regex(/test\s+version\s+.*?(\d+(?:\.\d+)+)/iu)
  end

  depends_on macos: ">= :high_sierra"

  pkg "ZeroTier One.pkg"

  uninstall quit:      "com.zerotier.ZeroTier-One",
            pkgutil:   "com.zerotier.pkg.ZeroTierOne",
            launchctl: "com.zerotier.one"

  zap trash: "~/Library/Preferences/com.zerotier.ZeroTier-One.plist"
end
