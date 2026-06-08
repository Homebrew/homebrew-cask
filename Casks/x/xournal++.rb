cask "xournal++" do
  arch arm: "ARM64", intel: "X64"

  version "1.3.5"
  sha256 arm:   "d008029930833677283d7b14a934adea89e8059f2364d309e1b00655db94971b",
         intel: "aa8763702eabccdec415a8059666d11bb7d6a27278796948828958a3e1a5bbec"

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
