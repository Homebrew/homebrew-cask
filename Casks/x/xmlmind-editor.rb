cask "xmlmind-editor" do
  version "11.2.0"
  sha256 "229bbafb806c3180a6da01030eca62ec6930f250199e4f58c6f9073d3820294b"

  url "https://www.xmlmind.com/xmleditor/_download/xxe-perso-#{version.dots_to_underscores}.dmg"
  name "XMLMind XML Editor"
  desc "Strictly validating near WYSIWYG XML editor"
  homepage "https://www.xmlmind.com/xmleditor/"

  livecheck do
    url "https://www.xmlmind.com/xmleditor/download.shtml"
    regex(/href=.*xxe-perso[._-]v?(\d+(?:_\d+)+).dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
    end
  end

  depends_on :macos

  app "XMLmind.app"

  zap trash: [
    "~/Library/Application Support/XMLmind",
    "~/Library/Application Support/XMLmind/XMLEditor11",
  ]
end
