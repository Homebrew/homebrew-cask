cask "ui" do
  version "0.52.1"
  sha256 "1ddf876c2701669415ab1c634feee336e2825a876a20c5f69835c57d0b09a48b"

  url "https://fw-download.ubnt.com/data/uid-ui-desktop-app/ecae-macOS-#{version}-fc1b9e29d90248a4b4ebe7e3b53dec8a.pkg",
      verified: "fw-download.ubnt.com/data/uid-ui-desktop-app/"
  name "UI Desktop"
  desc "Corporate Wi-Fi, VPN, SSO, and HR Application"
  homepage "https://www.ui.com/uid"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :mojave"

  pkg "ecae-macOS-0.52.1-fc1b9e29d90248a4b4ebe7e3b53dec8a.pkg"

  uninstall pkgutil:   [
    "com.ui.uid.desktop",
  ],

            launchctl: [
              "application.com.ui.uid.desktop.25686722.25686727",
              "com.ui.uid.desktop.startup",
            ]

  zap trash: [
    "~/Library/Application Support/com.ui.uid.desktop/",
    "~/Users/nilsstreedain/Library/Preferences/com.ui.uid.desktop.plist",
    "~/Library/Saved Application State/com.ui.uid.desktop.savedState/",
    "~/Library/Caches/com.ui.uid.desktop/",
    "/Applications/UI.app/Contents/Library/LoginItems/com.ui.uid.desktop.startup",
    "~/Library/Logs/UI",
  ]
end
