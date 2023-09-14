cask "zerotier-one" do
  version "1.12.2"
  sha256 "a7b144032dd5874cf4519194dd170c6fb460c3e3425db8942cd5a500a273745b"

  url "https://download.zerotier.com/RELEASES/#{version}/dist/ZeroTier%20One.pkg"
  name "ZeroTier One"
  desc "Mesh VPN client"
  homepage "https://www.zerotier.com/download.shtml"

  livecheck do
    url "https://github.com/zerotier/ZeroTierOne"
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  pkg "ZeroTier One.pkg"

  uninstall quit:      "com.zerotier.ZeroTier-One",
            pkgutil:   "com.zerotier.pkg.ZeroTierOne",
            launchctl: "com.zerotier.one"

  zap trash: "~/Library/Preferences/com.zerotier.ZeroTier-One.plist"
end
