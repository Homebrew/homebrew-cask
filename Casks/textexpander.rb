cask "textexpander" do
  version "7.4.1,741.2"
  sha256 "ad16c8ba5bde8fef6c4d8d9fdf816ef127364ec2a3858c662d45a53ecf2450ef"

  url "https://cdn.textexpander.com/mac/#{version.csv.second}/TextExpander_#{version.csv.first}.dmg",
      verified: "cdn.textexpander.com/mac/"
  name "TextExpander"
  desc "Inserts pre-made snippets of text anywhere"
  homepage "https://smilesoftware.com/TextExpander"

  livecheck do
    url "https://textexpander.com/appcast/TextExpander-macOS.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "TextExpander.app"

  zap trash: "~/Library/Application Support/TextExpander/"
end
