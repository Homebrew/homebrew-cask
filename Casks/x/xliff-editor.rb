cask "xliff-editor" do
  version "2.9.15"
  sha256 :no_check

  url "https://sweetpproductions.com/products/xliffeditor/XliffEditor.dmg",
      verified: "sweetpproductions.com/products/xliffeditor/"
  name "Xliff Editor"
  desc "Localization file editor"
  homepage "https://xliffedit.com/"

  livecheck do
    url "https://sweetpproductions.com/products/xliffeditor/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Xliff Editor.app"

  zap trash: [
    "~/Library/Containers/com.sweetpproductions.Xliff-Editor",
    "~/Library/Group Containers/*.com.sweetpproductions.Xliff-Editor",
  ]
end
