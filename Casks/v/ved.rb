cask "ved" do
  version "1.11.1"
  sha256 "0bad1827dca22e9a59c22b7b9be7fdb2f9aa18294071021b064e29700ff9c0f6"

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
