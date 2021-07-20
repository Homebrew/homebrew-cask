cask "xournal-plus-plus" do
  version "1.1.0"
  sha256 "fe713a9fb3d796a71bbeb6eefac24c11e8c3e4a907dc90cb6c0ea90695d18246"

  url "https://github.com/xournalpp/xournalpp/releases/download/#{version}/xournalpp-#{version}-macos.zip"
  name "Xournal++"
  desc "Handwriting notetaking software"
  homepage "https://github.com/xournalpp/xournalpp"

  app "Xournal++.app"

  zap trash: [
    "~/Library/Saved Application State/com.github.xournalpp.savedState",
    "~/.xournalpp",
  ]
end
