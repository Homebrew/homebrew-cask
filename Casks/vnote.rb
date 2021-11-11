cask "vnote" do
  version "3.9.0"
  sha256 "edaab49ce7f458206424a5f02e20854c4fed06d23a791b4a8bf3a22dddc9fab5"

  url "https://github.com/vnotex/vnote/releases/download/v#{version}/vnote-mac-x64_v#{version}.zip",
      verified: "github.com/vnotex/vnote/"
  name "VNote"
  desc "Note-taking application that knows programmers and Markdown better"
  homepage "https://vnotex.github.io/vnote/"

  app "VNote.app"

  zap trash: [
    "~/Library/Application Support/VNote",
    "~/Library/Preferences/com.vnotex.vnote.plist",
    "~/Library/Preferences/VNote",
  ]
end
