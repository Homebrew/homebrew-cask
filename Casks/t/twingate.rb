cask "twingate" do
  version "2026.182.26057"
  sha256 "de64c52f5a7b52c81ca0cffd6e37f563d9d17cff497b88246835df6807e1126a"

  url "https://binaries.twingate.com/client/macos/#{version}/Twingate.pkg"
  name "Twingate"
  desc "Zero trust network access platform"
  homepage "https://twingate.com/"

  livecheck do
    url "https://www.twingate.com/changelog/clients"
    regex(%r{/macos/v?(\d+(?:\.\d+)+)/Twingate\.pkg}i)
  end

  auto_updates true
  depends_on macos: :monterey

  pkg "Twingate.pkg"

  uninstall launchctl:  "com.twingate.macos.launcher",
            quit:       "com.twingate.macos",
            login_item: "Twingate Launcher.app",
            pkgutil:    "com.twingate.macos"

  zap script: {
        executable:   "networksetup",
        args:         ["-deletepppoeservice", "Twingate"],
        must_succeed: false,
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
