cask "vnote" do
  version "3.11.0"
  sha256 "47fe4387248a82b655940013aeac8bd1dd540c23ce301f2e7e399163a40c6dc4"

  url "https://github.com/vnotex/vnote/releases/download/3.11.0/vnote-mac-x64_v3.11.0.zip"
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
