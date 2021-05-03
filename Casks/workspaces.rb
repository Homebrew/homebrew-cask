cask "workspaces" do
  version "2.0.3"
  sha256 "757210890ca5b4a5f7eaab2b0abbfd201553868438d3e14acfc201670da5e556"

  url "https://www.apptorium.com/public/products/workspaces/releases/Workspaces-#{version}.zip"
  name "Workspaces"
  desc "Workspace organizing app"
  homepage "https://www.apptorium.com/workspaces"

  livecheck do
    url "https://www.apptorium.com/updates/workspaces"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "Workspaces.app"

  zap trash: [
    "~/Application Support/Workspaces",
    "~/Library/Application Support/com.apptorium.Workspaces*",
    "~/Library/Application Scripts/com.apptorium.Workspaces*",
    "~/Library/Caches/com.apptorium.Workspaces*",
    "~/Library/Containers/com.apptorium.Workspaces-Helper",
    "~/Library/Cookies/com.apptorium.Workspaces*.binarycookies",
    "~/Library/Preferences/com.apptorium.Workspaces*.plist",
  ]
end
