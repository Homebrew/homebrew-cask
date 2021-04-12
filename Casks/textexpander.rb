cask "textexpander" do
  version "6.8.3,683.2"
  sha256 "4d71ff80978a44753456f84078ee72a22bdc3c0ab22eaa1209f954024db68301"

  url "https://cdn.textexpander.com/mac/#{version.after_comma}/TextExpander_#{version.before_comma}.zip",
      verified: "cdn.textexpander.com/mac/"
  name "TextExpander"
  desc "Inserts pre-made snippets of text anywhere"
  homepage "https://smilesoftware.com/TextExpander"

  livecheck do
    url "https://textexpander.com/appcast/TextExpander-macOS.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TextExpander.app"

  zap trash: "~/Library/Application Support/TextExpander/"
end
