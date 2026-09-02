cask "xournal++" do
  arch arm: "ARM64", intel: "X64"

  version "1.3.7"
  sha256 arm:   "b13e5229e113da630946826ddc37e25d33d24fe1192ab0d3327468e319ccf4d4",
         intel: "cb474a78fe65a5d59b9774d37f0f04e7da4340535ee8d50983fb0b5df9cee313"

  url "https://github.com/xournalpp/xournalpp/releases/download/v#{version}/xournalpp-#{version}-macOS-#{arch}.dmg"
  name "Xournal++"
  desc "Handwriting notetaking software"
  homepage "https://github.com/xournalpp/xournalpp"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Xournal++.app"

  zap trash: [
    "~/.xournalpp",
    "~/Library/Saved Application State/com.github.xournalpp.savedState",
  ]
end
