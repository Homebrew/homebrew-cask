cask "textexpander" do
  version "6.8.4,684.8"
  sha256 "a8e67846e386cf6e2235f40004c82ebd442ebb5e6152a088129334741b6dd772"

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
