cask "workspaces" do
  version "2.2"
  sha256 "09e1a2ab5d1b8f3c6f4c3bf4534d2e3df7be52f91c3f24d772a8dd64eb053319"

  url "https://www.apptorium.com/public/products/workspaces/releases/Workspaces-#{version}.zip"
  name "Workspaces"
  desc "Workspace organising app"
  homepage "https://www.apptorium.com/workspaces"

  livecheck do
    url "https://www.apptorium.com/updates/workspaces"
    strategy :sparkle, &:short_version
  end

  depends_on :macos

  app "Workspaces.app"

  uninstall quit: "com.apptorium.Workspaces#{version.major}-paddle"

  zap trash: [
    "~/Library/Application Scripts/com.apptorium.Workspaces*",
    "~/Library/Application Support/com.apptorium.Workspaces*",
    "~/Library/Application Support/Workspaces",
    "~/Library/Caches/com.apptorium.Workspaces*",
    "~/Library/Containers/com.apptorium.Workspaces-Helper",
    "~/Library/Cookies/com.apptorium.Workspaces*.binarycookies",
    "~/Library/Preferences/com.apptorium.Workspaces*.plist",
  ]
end
