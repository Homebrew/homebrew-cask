cask "workflowy" do
  url_end = on_system_conditional macos: ".zip", linux: "-x86_64.AppImage"

  version "4.3.2611041652"
  sha256 arm:          "e7ed1a29d7feba50687194636b89b40acb7c67ecbeda697c4b1a7a79fbf851aa",
         intel:        "e7ed1a29d7feba50687194636b89b40acb7c67ecbeda697c4b1a7a79fbf851aa",
         x86_64_linux: "3f5d0b2603a8019649135527304ebaea05d7b187c34128fad8f7fe8be0e9dc6a"

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
