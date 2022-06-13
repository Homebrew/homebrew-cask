cask "zerotier-one" do
  version "1.10.0"
  sha256 "f4c5caec7ff22e538fcf7b83864877b580d535876ff267cb7059393c25306e53"

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
