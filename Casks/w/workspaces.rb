cask "workspaces" do
  version "2.3"
  sha256 "eff13cfff0c139eeb7c457297c07a16a65253ad56f9c88a592d228fcae8e6336"

  url "https://www.apptorium.com/public/products/workspaces/releases/Workspaces-#{version}.zip"
  name "Workspaces"
  desc "Workspace organising app"
  homepage "https://www.apptorium.com/workspaces"

  livecheck do
    url "https://www.apptorium.com/updates/workspaces"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :sonoma

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
