cask "zerotier-one" do
  version "1.16.2"
  sha256 "13b5054c0b51e337970e83da6f32bd245a70a5dd92421b08dadbefcaadf2f37f"

  url "https://download.zerotier.com/RELEASES/#{version}/dist/ZeroTier%20One.pkg"
  name "ZeroTier One"
  desc "Mesh VPN client"
  homepage "https://www.zerotier.com/"

  livecheck do
    url "https://download.zerotier.com/RELEASES/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  depends_on :macos

  pkg "ZeroTier One.pkg"

  uninstall launchctl: "com.zerotier.one",
            quit:      "com.zerotier.ZeroTier-One",
            pkgutil:   "com.zerotier.pkg.ZeroTierOne"

  zap trash: "~/Library/Preferences/com.zerotier.ZeroTier-One.plist"
end
