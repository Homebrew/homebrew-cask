cask "xournal++" do
  arch arm: "macos-arm.dmg", intel: "macos.zip"

  version "1.2.4"
  sha256 arm:   "6a6f890cb64f2fc6201d92369c138e37eae33faf38d9c695c72c3ad02a3b54cc",
         intel: "441f4b075548ae942a6a1217c958b2dcaa05575d0016c8cc27541358e8669c3a"

  url "https://github.com/xournalpp/xournalpp/releases/download/v#{version}/xournalpp-#{version}-#{arch}"
  name "Xournal++"
  desc "Handwriting notetaking software"
  homepage "https://github.com/xournalpp/xournalpp"

  depends_on macos: ">= :catalina"

  app "Xournal++.app"

  zap trash: [
    "~/.xournalpp",
    "~/Library/Saved Application State/com.github.xournalpp.savedState",
  ]
end
