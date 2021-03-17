cask "textexpander" do
  version "6.8.1,681.3"
  sha256 "16ababb5a67577b5eabc134de09426134f534c9219dfd0e77b8c61b508bff2b0"

  url "https://cdn.textexpander.com/mac/#{version.after_comma}/TextExpander_#{version.before_comma}.zip",
      verified: "cdn.textexpander.com/mac/"
  name "TextExpander"
  desc "Inserts pre-made snippets of text anywhere"
  homepage "https://smilesoftware.com/TextExpander"

  livecheck do
    url "https://smilesoftware.com/appcast/TextExpander#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TextExpander.app"

  zap trash: "~/Library/Application Support/TextExpander/"
end
