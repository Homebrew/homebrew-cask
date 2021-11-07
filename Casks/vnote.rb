cask "vnote" do
  version "3.8.1"
  sha256 "8c029b5d5567730d4b4fd5964a3e11b474300b82bf2fbcab595cf85cc2965455"

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
