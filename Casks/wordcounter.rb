cask "wordcounter" do
  version "1.6.5"
  sha256 "8b7e2df1170382362bf83bb199dcd8daab64c9824ddaffda9182d5cbd39554d6"

  url "https://d1dncsspr585u3.cloudfront.net/WordCounter-v#{version}.dmg", verified: "d1dncsspr585u3.cloudfront.net"
  name "wordcounter"
  desc "Count words written across apps and display in the menu bar"
  homepage "https://wordcounterapp.com/"

  depends_on macos: ">= :sierra"

  app "WordCounter.app"

  zap trash: [
    "~/Library/Application Scripts/de.christiantietze.WordCounter-LaunchAtLoginHelper",
    "~/Library/Application Support/WordCounter",
    "~/Library/Containers/de.christiantietze.WordCounter-LaunchAtLoginHelper",
    "~/Library/Logs/WordCounter",
    "~/Library/Preferences/de.christiantietze.WordCounter.plist",
  ]
end
