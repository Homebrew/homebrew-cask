cask "workflowy" do
  url_end = on_system_conditional macos: ".zip", linux: "-x86_64.AppImage"

  version "4.3.2610131105"
  sha256 arm:          "9169da863c93b38542af78a2bd42cd0782236c1e65bec8b36e5c4b0c4f6379bc",
         intel:        "9169da863c93b38542af78a2bd42cd0782236c1e65bec8b36e5c4b0c4f6379bc",
         x86_64_linux: "7c06b94f04824c10a9c7b7d7bf780db781ba5dc76ea1ea4adb00f953229e07a7"

  on_macos do
    depends_on macos: :monterey

    app "WorkFlowy.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.workflowy.desktop.sfl*",
      "~/Library/Application Support/WorkFlowy",
      "~/Library/Logs/WorkFlowy",
      "~/Library/Preferences/com.workflowy.desktop.plist",
      "~/Library/Saved Application State/com.workflowy.desktop.savedState",
    ]
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
