cask "tageditor" do
  version :latest
  sha256 :no_check

  url "https://amvidia.com/download-tag-editor-mac.dmg.zip"
  name "Tag Editor"
  desc "Spreadsheet style tag editor for audio files"
  homepage "https://amvidia.com/tag-editor"

  auto_updates false

  app "Tag Editor.app"

  zap trash: [
    "~/Library/Application Scripts/com.amvidia.Tag-Editor-FS",
    "~/Library/Containers/Tag Editor",
    "~/Library/Saved Application State/com.amvidia.Tag-Editor-FS.savedState",
  ]
end
