cask "workflowy" do
  url_end = on_system_conditional macos: ".zip", linux: "-x86_64.AppImage"

  version "4.3.2609230951"
  sha256 arm:          "00acac504a7b9b565ec94ef996446a63e785aaa4d4eb80b86737875a479a025a",
         intel:        "00acac504a7b9b565ec94ef996446a63e785aaa4d4eb80b86737875a479a025a",
         x86_64_linux: "fa346b1a9caebf4a9c6c1fa536b4138b6546c7e32a6822416644a458d7cb679c"

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
