cask "xournal-plus-plus" do
  version "1.1.3"
  sha256 "4393fa726cb1d0afb93318701ed6e4abaa0add683e4122fdaebca3c5567c346f"

  url "https://github.com/xournalpp/xournalpp/releases/download/v#{version}/xournalpp-#{version}-macos.zip"
  name "Xournal++"
  desc "Handwriting notetaking software"
  homepage "https://github.com/xournalpp/xournalpp"

  depends_on macos: ">= :catalina"

  app "Xournal++.app"

  zap trash: [
    "~/Library/Saved Application State/com.github.xournalpp.savedState",
    "~/.xournalpp",
  ]
end
