cask "tikzit" do
  version "2.1.6"
  sha256 "4c7e2de7f021805272505b5313890ec4bcd42e2a66c2de7af74a866e5c96a3ed"

  url "https://github.com/tikzit/tikzit/releases/download/v#{version}/tikzit-osx.dmg",
      verified: "github.com/tikzit/tikzit/"
  appcast "https://github.com/tikzit/tikzit/releases.atom"
  name "TikZiT"
  desc "PGF/TikZ diagram editor"
  homepage "https://tikzit.github.io/"

  depends_on macos: ">= :sierra"

  app "TikZiT.app"
end
