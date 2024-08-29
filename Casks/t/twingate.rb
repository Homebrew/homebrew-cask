cask "twingate" do
  version "2024.238.6943"
  sha256 "a5d3a96fa4ab5339f411c60bc72b56cbbfd8dbbaed25b7be3f509e41e61bf35a"

  url "https://binaries.twingate.com/client/macos/#{version}/Twingate.pkg"
  name "Twingate"
  desc "Zero trust network access platform"
  homepage "https://twingate.com/"

  livecheck do
    url "https://www.twingate.com/changelog/clients"
    regex(%r{/macos/v?(\d+(?:\.\d+)+)/Twingate\.pkg}i)
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  pkg "Twingate.pkg"

  uninstall launchctl:  "com.twingate.macos.launcher",
            quit:       "com.twingate.macos",
            login_item: "Twingate Launcher.app",
            pkgutil:    "com.twingate.macos"

  zap script: {
        executable: "networksetup",
        args:       ["-deletepppoeservice", "Twingate"],
      },
      trash:  [
        "~/Library/Application Scripts/6GX8KVTR9H.com.twingate",
        "~/Library/Application Scripts/group.com.twingate",
        "~/Library/Containers/com.twingate.macos",
        "~/Library/Containers/com.twingate.macos.tunnelprovider",
        "~/Library/Group Containers/6GX8KVTR9H.com.twingate",
        "~/Library/Group Containers/group.com.twingate",
        "~/Library/Preferences/com.twingate.macos.plist",
      ]
end
