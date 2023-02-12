cask "tageditor" do
  version "1.0.11,1116"
  sha256 :no_check

  url "https://amvidia.com/download-tag-editor-mac.dmg.zip"
  name "Tag Editor"
  desc "Spreadsheet style tag editor for audio files"
  homepage "https://amvidia.com/tag-editor"

  livecheck do
    url :homepage
    regex(/Version:.*?">(\d+(?:\.\d+)+)\s\((\d+)\)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "Tag Editor.app"

  zap trash: [
    "~/Library/Application Scripts/com.amvidia.Tag-Editor-FS",
    "~/Library/Containers/Tag Editor",
    "~/Library/Saved Application State/com.amvidia.Tag-Editor-FS.savedState",
  ]
end
