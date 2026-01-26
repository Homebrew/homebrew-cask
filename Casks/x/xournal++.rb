cask "xournal++" do
  arch arm: "ARM64", intel: "X64"

  version "1.3.1"
  sha256 arm:   "b87e710e4158711c34cbae0b5a999b552724c338050b62f0f7b3fd2ed01c0051",
         intel: "4c8f3cd1a4fee86466deeef33c6a81f0cc25a410102e1b5f3c16424f15c92d01"

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
