cask "xournal++" do
  arch arm: "ARM64", intel: "X64"

  version "1.2.8"
  sha256 arm:   "fd93849c2e3e613a313a80be231ed0d6ee549e88b9a3446a89337e008765f11d",
         intel: "b13bb2f86d8873195308493180c218465c8a592ce2dc21e4bfda76b125854c6b"

  url "https://github.com/xournalpp/xournalpp/releases/download/v#{version}/xournalpp-#{version}-macOS-#{arch}.dmg"
  name "Xournal++"
  desc "Handwriting notetaking software"
  homepage "https://github.com/xournalpp/xournalpp"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :catalina"

  app "Xournal++.app"

  zap trash: [
    "~/.xournalpp",
    "~/Library/Saved Application State/com.github.xournalpp.savedState",
  ]
end
