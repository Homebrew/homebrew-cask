cask "vnote" do
  version "3.15.1"
  sha256 "846110bf9b2eb804dba2038ca7318fa99675330f9cac538f6e455ad0f99b9035"

  url "https://github.com/vnotex/vnote/releases/download/v#{version}/vnote-mac-x64-qt5.15.2_v#{version}.dmg",
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
