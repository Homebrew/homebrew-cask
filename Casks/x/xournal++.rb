cask "xournal++" do
  arch arm: "ARM64", intel: "X64"

  version "1.2.7"
  sha256 arm:   "8c5775dc04d21cfb968f3e52bf7043806e362d4a4828e36a902be3914f5c2c9b",
         intel: "9a6b7dcf1aa79fdbb6cf3ac8c44a2f8cb056be92fb368f123c181c6605607e3f"

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
