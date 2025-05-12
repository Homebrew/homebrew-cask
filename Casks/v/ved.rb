cask "ved" do
  version "1.12.0"
  sha256 "eeb3ede463ecb539dffd73bff3c7101959534cd5839d240a7d9a8417356a47b7"

  url "https://tolp.nl/ved/files/download/mac/ved_#{version}_mac.dmg"
  name "ved"
  desc "External level editor for VVVVVV"
  homepage "https://tolp.nl/ved/"

  livecheck do
    url "https://tolp.nl/ved/files/download/mac/"
    regex(/href=.*?ved[ ._-]v?(\d+(?:\.\d+)+)[ ._-]mac\.dmg/i)
  end

  app "Ved.app"

  zap trash: [
    "~/Library/Application Support/ved",
    "~/Library/Caches/nl.tolp.ved",
    "~/Library/Saved Application State/nl.tolp.ved.savedState",
  ]
end
