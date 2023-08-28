cask "xournal-plus-plus" do
  version "1.2.1"
  sha256 "1002ae2f97e506826c6f0974d7279fb28039a4363dad42580d83ad6e489f6747"

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
