cask "xournal++" do
  arch arm: "ARM64", intel: "X64"

  version "1.3.3"
  sha256 arm:   "95d17d00c4311c542e592ba267e5c086714bf604d723f580a8f7e8a912437b39",
         intel: "f916a37c5522c36443348e86f610c8286f950c43013d8a7872eb3cc309eb6cb8"

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
