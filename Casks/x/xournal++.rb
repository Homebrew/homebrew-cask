cask "xournal++" do
  arch arm: "ARM64", intel: "X64"

  version "1.3.6"
  sha256 arm:   "6f66096ee0168601e2130f23da20aab2dc14d1d6d3d167043ef165f0223ecde7",
         intel: "f0ff4c96caa1b3f72a3bd9e078297e2f8a5b1143cdea73865361150302b08cdc"

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
