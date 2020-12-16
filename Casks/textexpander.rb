cask "textexpander" do
  version "6.8,680.30"
  sha256 "9cddd638d0e3179d62d4eb2e1127c516d58cee7021df3f78bbb44d1d6a1c9684"

  url "https://cdn.textexpander.com/mac/#{version.after_comma}/TextExpander_#{version.before_comma}.zip",
      verified: "cdn.textexpander.com/mac/"
  appcast "https://smilesoftware.com/appcast/TextExpander#{version.major}.xml"
  name "TextExpander"
  desc "Inserts pre-made snippets of text anywhere"
  homepage "https://smilesoftware.com/TextExpander"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TextExpander.app"

  zap trash: "~/Library/Application Support/TextExpander/"
end
