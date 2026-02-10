cask "xournal++" do
  arch arm: "ARM64", intel: "X64"

  version "1.3.2"
  sha256 arm:   "6040c407a85a4e1fa37bdea254420373edc7d256722f85bf49b1c4b2016f8be1",
         intel: "1ba92c4362e4ce7ab3f3ff188a1f8295a1e089887f721b5ae02738470c435691"

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
