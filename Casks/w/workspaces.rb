cask "workspaces" do
  version "2.1.5"
  sha256 "90ed7596eb2ce178451d5e2aa69a2a2a6cd9e1c188ca0556bf11f2f86e3c1612"

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
