cask "xournal++" do
  version "1.2.4"
  sha256 "441f4b075548ae942a6a1217c958b2dcaa05575d0016c8cc27541358e8669c3a"

  url "https://github.com/xournalpp/xournalpp/releases/download/v#{version}/xournalpp-#{version}-macos.zip"
  name "Xournal++"
  desc "Handwriting notetaking software"
  homepage "https://github.com/xournalpp/xournalpp"

  depends_on macos: ">= :catalina"

  app "Xournal++.app"

  zap trash: [
    "~/.xournalpp",
    "~/Library/Saved Application State/com.github.xournalpp.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
