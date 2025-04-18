cask "vnote" do
  version "3.19.1"
  sha256 "8b2f32f57a94dcf20e4de7ea98fa073d735a6ed70dd697e67af909b6537a6f66"

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
