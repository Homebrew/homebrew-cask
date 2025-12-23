cask "zerotier-one" do
  version "1.16.1"
  sha256 "726a83e725061974089d5eae9aa68a16dfb24df2289a044c414dcad22a517546"

  url "https://download.zerotier.com/RELEASES/#{version}/dist/ZeroTier%20One.pkg"
  name "ZeroTier One"
  desc "Mesh VPN client"
  homepage "https://www.zerotier.com/"

  livecheck do
    url "https://download.zerotier.com/RELEASES/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  pkg "ZeroTier One.pkg"

  uninstall launchctl: "com.zerotier.one",
            quit:      "com.zerotier.ZeroTier-One",
            pkgutil:   "com.zerotier.pkg.ZeroTierOne"

  zap trash: "~/Library/Preferences/com.zerotier.ZeroTier-One.plist"
end
