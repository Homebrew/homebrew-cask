cask "workflowy" do
  url_end = on_system_conditional macos: ".zip", linux: "-x86_64.AppImage"

  version "4.3.2611280845"
  sha256 arm:          "f1a88d364a67162c63f05eba947af9ea36431a3c4acf600e73b0977f40109c7e",
         intel:        "f1a88d364a67162c63f05eba947af9ea36431a3c4acf600e73b0977f40109c7e",
         x86_64_linux: "a2714d87a03e9c9fffbbc8d61be9c31707ddc4b3f81c73f1770dd14bbc1e6d69"

  on_macos do
    depends_on macos: :monterey

    app "WorkFlowy.app"

    zap trash: [
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.workflowy.desktop.sfl*",
          "~/Library/Application Support/WorkFlowy",
          "~/Library/Logs/WorkFlowy",
          "~/Library/Preferences/com.workflowy.desktop.plist",
          "~/Library/Saved Application State/com.workflowy.desktop.savedState",
        ],
        rmdir: "~/.workflowy"
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "WorkFlowy-x86_64.AppImage", target: "WorkFlowy.AppImage"

    zap trash: [
      "~/.cache/workflowy-updater",
      "~/.config/WorkFlowy",
    ]
  end

  url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy#{url_end}"
  name "WorkFlowy"
  desc "Notetaking tool"
  homepage "https://workflowy.com/download/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
