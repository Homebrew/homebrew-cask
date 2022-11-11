cask "voikkospellservice" do
  version "1.1.0b1"
  sha256 "c1dec3cda95ed77de2e6246e5e16b4425f40c576a2409d272ea85fb2bc22f285"

  url "https://github.com/walokra/osxspell/releases/download/#{version}/VoikkoSpellService-#{version}.dmg",
      verified: "github.com/walokra/osxspell/"
  name "VoikkoSpellService"
  desc "Spell-checking service for Finnish"
  homepage "https://verteksi.net/lab/osxspell/"

  depends_on macos: ">= :big_sur"

  service "VoikkoSpellService.app"

  uninstall signal: ["TERM", "org.puimula.VoikkoSpellService"]
end
