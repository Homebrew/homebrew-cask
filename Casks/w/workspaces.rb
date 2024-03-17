cask "workspaces" do
  version "2.1.3"
  sha256 "57ebc096622efeaa2ed459ffe8599f460b00262c0d4ebe7ea7f30464fdf46565"

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
