cask "vnote" do
  version "3.10.0"
  sha256 "5d9a2d89f7b0d87a99c0bc27630540cbdd04400f7c5363e0641aead33fd4a0db"

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
