cask "workflowy" do
  url_end = on_system_conditional macos: ".zip", linux: "-x86_64.AppImage"

  version "4.3.2609150856"
  sha256 arm:          "defc572707c36cd0383b9877d2b433324e4fbe3bd861b1d46fb1cae598d75548",
         intel:        "defc572707c36cd0383b9877d2b433324e4fbe3bd861b1d46fb1cae598d75548",
         x86_64_linux: "f88d2da6b6d8ca6ebd1bc493fc901c4ef6bf74c6ca5a04ff1f9d8073fb46da5f"

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
