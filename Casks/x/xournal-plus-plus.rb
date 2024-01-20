cask "xournal-plus-plus" do
  version "1.2.2"
  sha256 "847e3b85fa6123bc94db82a1f4eb0749778b82ac33432b3b25de3819f28dfcae"

  url "https://github.com/xournalpp/xournalpp/releases/download/v#{version}/xournalpp-#{version}-macos.zip"
  name "Xournal++"
  desc "Handwriting notetaking software"
  homepage "https://github.com/xournalpp/xournalpp"

  depends_on macos: ">= :catalina"

  app "Xournal++.app"

  zap trash: [
    "~/.xournalpp",
    "~/Library/Saved Application State/com.github.xournalpp.savedState",
  ]
end
