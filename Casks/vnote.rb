cask "vnote" do
  version "3.15.0"
  sha256 "fa44d0328dc6a430d46bb272e1d59509838d6d7439ce6a88dad5df6d3b21a89e"

  url "https://github.com/vnotex/vnote/releases/download/v#{version}/vnote-mac-x64-qt5.15.2_v#{version}.zip",
      verified: "github.com/vnotex/vnote/"
  name "VNote"
  desc "Note-taking platform"
  homepage "https://vnotex.github.io/vnote/"

  app "VNote.app"

  zap trash: [
    "~/Library/Application Support/VNote",
    "~/Library/Preferences/com.vnotex.vnote.plist",
    "~/Library/Preferences/VNote",
  ]
end
