cask "xournal++" do
  arch arm: "ARM64", intel: "X64"

  version "1.3.0"
  sha256 arm:   "f52c68fa772f35041a48a6428b5e13d2897a67816c070d2b53cbb30a93d4ca7e",
         intel: "ecb200d4f0f7587968c69345fe342e123614eb6b52373facbf608dcb8126ebe7"

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
