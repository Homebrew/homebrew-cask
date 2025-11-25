cask "twingate" do
  version "2025.327.21336"
  sha256 "b63ce987e9db70f99465006a43b2a72c9e0f475c766fc7693eefb00a7d81ce5a"

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
