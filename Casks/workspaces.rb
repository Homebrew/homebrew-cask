cask "workspaces" do
  version "2.1"
  sha256 "ab2a6fd15c37e78c1571cf5fe0d2ce8d4bdb4cf05c44e3bd876ee098dfcf5497"

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
