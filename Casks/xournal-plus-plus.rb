cask "xournal-plus-plus" do
  version "1.2.0"
  sha256 "1a88dc38e4a66f5b2df184442a1510a5e6068e6a7b1e7bb770e9579bd1684127"

  url "https://github.com/xournalpp/xournalpp/releases/download/v#{version}/xournalpp-#{version}-macos.zip"
  name "Xournal++"
  desc "Handwriting notetaking software"
  homepage "https://github.com/xournalpp/xournalpp"

  depends_on macos: ">= :catalina"

  app "Xournal++.app"

  zap trash: [
    "~/Library/Saved Application State/com.github.xournalpp.savedState",
    "~/.xournalpp",
  ]
end
