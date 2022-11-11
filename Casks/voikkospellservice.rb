cask "voikkospellservice" do
  version "1.1.0b1"
  sha256 "146f0f8a31e7b1b40a2fa8a6eec77fcdbf5553a7e66d32a16492afcb7b2e9b23"

  url "https://github.com/walokra/osxspell/releases/download/#{version}/VoikkoSpellService-#{version}.dmg",
      verified: "github.com/walokra/osxspell/"
  name "VoikkoSpellService"
  desc "Spell-checking service for Finnish"
  homepage "https://verteksi.net/lab/osxspell/"

  depends_on macos: ">= :big_sur"

  service "VoikkoSpellService.app"

  uninstall signal: ["TERM", "org.puimula.VoikkoSpellService"]

  zap trash: "~/Library/Spelling/Finnish"
end
