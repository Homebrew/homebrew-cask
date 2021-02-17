cask "xournal-plus-plus" do
  version "1.0.20"
  sha256 "f3d9bac9a942940fee0555a6621b7213ca3ab15ba2f2173dc82c928fff34516c"

  url "https://github.com/xournalpp/xournalpp/releases/download/#{version}/xournalpp-#{version}-macos.zip"
  appcast "https://github.com/xournalpp/xournalpp/releases.atom"
  name "Xournal++"
  desc "Handwriting notetaking software"
  homepage "https://github.com/xournalpp/xournalpp"

  app "Xournal++.app"

  zap trash: [
    "~/Library/Saved Application State/com.github.xournalpp.savedState",
    "~/.xournalpp",
  ]
end
