cask "xournal++" do
  arch arm: "ARM64", intel: "X64"

  version "1.2.10"
  sha256 arm:   "3c171da2624462813818842a8a89d0f9e33b255e5fa6f7d544c9797140a0105e",
         intel: "82cdad06e740d1ecbccdb0ad70ada9e0c9277b31d2328fdcf6602a17f14a98e6"

  url "https://github.com/xournalpp/xournalpp/releases/download/v#{version}/xournalpp-#{version}-macOS-#{arch}.dmg"
  name "Xournal++"
  desc "Handwriting notetaking software"
  homepage "https://github.com/xournalpp/xournalpp"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Xournal++.app"

  zap trash: [
    "~/.xournalpp",
    "~/Library/Saved Application State/com.github.xournalpp.savedState",
  ]
end
