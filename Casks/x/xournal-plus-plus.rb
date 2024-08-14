cask "xournal-plus-plus" do
  version "1.2.3"
  sha256 "3fdd861352c1663c43d7a4cd30f0c2297f9d593acac23d311ecd63ec9a7cd231"

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
