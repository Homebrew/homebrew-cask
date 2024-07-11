cask "vnote" do
  version "3.18.1"
  sha256 "3699cfa700a52841525f5aeac1ee5aaf51e6eceaad000a799f4078fcb8de89b2"

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
