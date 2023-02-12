cask "vpn-by-google-one" do
  version "1.2.1.1"
  sha256 :no_check

  url "https://dl.google.com/google-one/VpnByGoogleOne.dmg"
  name "VPN by Google One"
  desc "VPN provided by Google One"
  homepage "https://one.google.com/about/vpn"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "VpnByGoogleOne.pkg"

  # Some launchctl and pkgutil items are shared with other Google apps, they should only be removed in the zap stanza
  # See: https://github.com/Homebrew/homebrew-cask/pull/92704#issuecomment-727163169
  # launchctl: com.google.keystone.daemon, com.google.keystone.system.agent, com.google.keystone.system.xpcservice
  # pkgutil: com.google.pkg.Keystone
  uninstall launchctl: "VPN by Google One",
            quit:      "com.google.one",
            pkgutil:   "com.google.one"

  zap launchctl: [
        "com.google.keystone.agent",
        "com.google.keystone.daemon",
        "com.google.keystone.system.agent",
        "com.google.keystone.system.xpcservice",
        "com.google.keystone.xpcservice",
      ],
      pkgutil:   "com.google.pkg.Keystone",
      trash:     [
        "~/Library/Application Scripts/com.google.one",
        "~/Library/Containers/com.google.one",
        "~/Library/Group Containers/EQHXZ8M8AV.com.google.one",
        "~/Library/LaunchAgents/VPN by Google One.plist",
      ]
end
