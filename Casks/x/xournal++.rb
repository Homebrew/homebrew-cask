cask "xournal++" do
  arch arm: "ARM64", intel: "X64"

  version "1.2.5"
  sha256 arm:   "993aec0ffde20c8dd8c731e7bc2216bfe7e6e6d80356bda0e6ea9bfbe0b97a46",
         intel: "d640c34d7792ce9ab706c7291686527eadaa9de36e71756c028168cdc6cc0766"

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
