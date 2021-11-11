cask "zerotier-one" do
  version "1.8.2"
  sha256 "63a60e40a8c84948367ad5bf55ef188986539f0612ff8703a45017fe8b41b736"

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
