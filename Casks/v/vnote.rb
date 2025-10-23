cask "vnote" do
  version "3.20.0"
  sha256 "e75d74da3704e2c1742bd0c76297ca5ba4d5b40c483332c4906f3ea8bfb825a4"

  url "https://github.com/vnotex/vnote/releases/download/v#{version}/VNote-#{version}-mac-universal.zip",
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
