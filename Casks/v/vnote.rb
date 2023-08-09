cask "vnote" do
  version "3.16.0"
  sha256 "1de98a0aa6b28a176280acd2c771b6d675102d971f5e66abc132496fecac3dd4"

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
