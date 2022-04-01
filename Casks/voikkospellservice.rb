cask "voikkospellservice" do
  version "1.0.6b1"
  sha256 "b94df1e56bab0895831723d369a6e99c03202e99a6db5fe62625af9b4fa17973"

  url "https://verteksi.net/files/osxspell/VoikkoSpellService-#{version}.dmg"
  name "VoikkoSpellService"
  homepage "https://verteksi.net/lab/osxspell/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/VoikkoSpellService-(\d+(?:\.\d+)*b\d+)\.dmg}i)
  end

  service "VoikkoSpellService.app"

  uninstall signal: ["TERM", "org.puimula.VoikkoSpellService"]
end
