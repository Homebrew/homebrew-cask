cask "workflowy" do
  url_end = on_system_conditional macos: ".zip", linux: "-x86_64.AppImage"

  version "4.3.2609101118"
  sha256 arm:          "50d7a673eab9843c62031fba775704d2200e1bb054f06ae8f6ed289436dc1ca2",
         intel:        "50d7a673eab9843c62031fba775704d2200e1bb054f06ae8f6ed289436dc1ca2",
         x86_64_linux: "dc2daea1aa53e5f1d2d8a7b776058f1e60b749436a629672d4c63e92e0564b31"

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
