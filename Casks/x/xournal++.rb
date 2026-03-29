cask "xournal++" do
  arch arm: "ARM64", intel: "X64"

  version "1.3.4"
  sha256 arm:   "95c99eda37ec3389c277808126614179fb779ae7f7694ff42fc11b428d679e38",
         intel: "3a978ce3b22f6de32064c9256c2ca94ae7be30e5fde996b18dd53aa41dcb68c1"

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
