cask "workspaces" do
  version "2.1.2"
  sha256 "92102cddbcebb3c7c5799c5f723bcf6cd442eefed4f4e642dd9db3ff17636571"

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
