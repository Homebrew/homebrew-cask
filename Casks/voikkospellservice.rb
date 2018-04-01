cask 'voikkospellservice' do
  version '1.0.6b1'
  sha256 'b94df1e56bab0895831723d369a6e99c03202e99a6db5fe62625af9b4fa17973'

  url "http://verteksi.net/files/osxspell/VoikkoSpellService-#{version}.dmg"
  name 'VoikkoSpellService'
  homepage 'http://verteksi.net/lab/osxspell/'

  depends_on macos: '>= :mavericks'

  service 'VoikkoSpellService.app'

  uninstall signal: ['TERM', 'org.puimula.VoikkoSpellService']
end
