cask "workflowy" do
  url_end = on_system_conditional macos: ".zip", linux: "-x86_64.AppImage"

  version "4.3.2611161827"
  sha256 arm:          "dbabf0d3dd7144e2a5564cc5b8ad771e9871c457b0055914ae5fd7b0d36cbd78",
         intel:        "dbabf0d3dd7144e2a5564cc5b8ad771e9871c457b0055914ae5fd7b0d36cbd78",
         x86_64_linux: "70c4e39a87b7b4247c595cce3f3bdff8cb2a4648bc5c5624003c6fcdcf0b53c6"

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
