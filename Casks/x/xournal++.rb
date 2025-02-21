cask "xournal++" do
  arch arm: "ARM64", intel: "X64"

  version "1.2.6"
  sha256 arm:   "ebff35fae469be8542b7c57b2f14f8e0cf682fc8a88481f87012587626e127fd",
         intel: "703bac0e07f0c497d2958124d68b022cf393c200360acecb1c04ab2de0c7ca90"

  url "https://github.com/xournalpp/xournalpp/releases/download/v#{version}/xournalpp-#{version}-macOS-#{arch}.dmg"
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
