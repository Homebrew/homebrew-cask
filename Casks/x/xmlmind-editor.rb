cask "xmlmind-editor" do
  version "11.0.0"
  sha256 "3b5d107fcb846693a60c7158c5facf01c8c1ce683dcf8e7dc004dab61bd08533"

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

  app "XMLmind.app"

  zap trash: [
    "~/Library/Application Support/XMLmind",
    "~/Library/Application Support/XMLmind/XMLEditor11",
  ]
end
