cask "ved" do
  version "1.9.1"
  sha256 "9ba3ea2de7b1c644bdd44be776ec10dea0411de57f8fa6bdfafd810a1d510766"

  url "https://tolp.nl/ved/files/download/mac/ved_#{version}_mac.dmg"
  name "ved"
  desc "External level editor for VVVVVV"
  homepage "https://tolp.nl/ved/"

  livecheck do
    url "https://tolp.nl/ved/files/download/mac/"
    strategy :page_match
    regex(/href=.*?ved[ ._-]v?(\d+(?:\.\d+)+)[ ._-]mac\.dmg/i)
  end

  app "Ved.app"

  zap trash: [
    "~/Library/Application Support/ved",
    "~/Library/Caches/nl.tolp.ved",
    "~/Library/Saved Application State/nl.tolp.ved.savedState",
  ]
end
