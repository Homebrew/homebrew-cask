cask "workspaces" do
  version "1.5.2"
  sha256 "351cec8103e54c5917b836f4cbe46fa240609db4150d564d7bcc17d4dcba2ae6"

  url "https://www.apptorium.com/public/products/workspaces/releases/Workspaces-#{version}.zip"
  name "Workspaces"
  homepage "https://www.apptorium.com/workspaces"

  livecheck do
    url "https://www.apptorium.com/updates/workspaces"
    strategy :page_match
    regex(%r{href=.*?/Workspaces-(\d+(?:\.\d+)*)\.zip}i)
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
