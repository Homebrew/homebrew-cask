cask "vnote" do
  version "3.18.0"
  sha256 "3720cea666f2c7e44bba1729f6bde39f4acd2b3d3c2cd014e228388c67f1e613"

  url "https://github.com/vnotex/vnote/releases/download/v#{version}/vnote-#{version}-mac-universal.zip",
      verified: "github.com/vnotex/vnote/"
  name "VNote"
  desc "Note-taking platform"
  homepage "https://vnotex.github.io/vnote/"

  depends_on macos: ">= :monterey"

  app "VNote.app"

  zap trash: [
    "~/Library/Application Support/VNote",
    "~/Library/Preferences/com.vnotex.vnote.plist",
    "~/Library/Preferences/VNote",
  ]
end
