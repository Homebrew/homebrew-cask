cask "workflowy" do
  url_end = on_system_conditional macos: ".zip", linux: "-x86_64.AppImage"

  version "4.3.2610291305"
  sha256 arm:          "bcd559db375f33d0dd99737d4987503d330ede1ff8670008b27a8251a58a6b6e",
         intel:        "bcd559db375f33d0dd99737d4987503d330ede1ff8670008b27a8251a58a6b6e",
         x86_64_linux: "a4dcc5e249b553758ad57c1eb06a82137a642753e67fc1c578f261e7048bc8a8"

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
