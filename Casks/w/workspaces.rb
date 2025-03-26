cask "workspaces" do
  version "2.1.4"
  sha256 "bd00c6b9d7eaa780e7e4eb7d5fd67e023235bcac3a7c42e8460be26ff713a10d"

  url "https://www.apptorium.com/public/products/workspaces/releases/Workspaces-#{version}.zip"
  name "Workspaces"
  desc "Workspace organising app"
  homepage "https://www.apptorium.com/workspaces"

  livecheck do
    url "https://www.apptorium.com/updates/workspaces"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "Workspaces.app"

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
