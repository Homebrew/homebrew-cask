cask "workflowy" do
  url_end = on_system_conditional macos: ".zip", linux: "-x86_64.AppImage"

  version "4.3.2611021619"
  sha256 arm:          "00a7cfffd68a569c9ca0515b6fd94598fff7780e21ef725ced5aad6222b56ddf",
         intel:        "00a7cfffd68a569c9ca0515b6fd94598fff7780e21ef725ced5aad6222b56ddf",
         x86_64_linux: "ad0ff452ee41b379e8bc565212910a37c03166606071d6afe8b0d3809639e0a6"

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
