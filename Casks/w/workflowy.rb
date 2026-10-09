cask "workflowy" do
  url_end = on_system_conditional macos: ".zip", linux: "-x86_64.AppImage"

  version "4.3.2610082012"
  sha256 arm:          "f213c185df5be8e9300e9374902ba0ea99762814780f72abd39da800a6d19900",
         intel:        "f213c185df5be8e9300e9374902ba0ea99762814780f72abd39da800a6d19900",
         x86_64_linux: "ae75c1b5669f80bd08618ec0451a079b9320113349543238ba5347ed15930eb9"

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
