cask "vnote" do
  version "3.20.1"
  sha256 "f72d19f4c9a4b8c1f145949665e0dde47ad31883abbb0c8139ed7791a34846e2"

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
