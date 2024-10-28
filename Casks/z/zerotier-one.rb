cask "zerotier-one" do
  version "1.14.2"
  sha256 "018e2368cf1f571606ad173339910470d3e253854b0bdb51b81b18d3c3105edd"

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
