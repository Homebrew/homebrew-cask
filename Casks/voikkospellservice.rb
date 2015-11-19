cask :v1 => 'voikkospellservice' do
  version '1.0.5b2'
  sha256 '15af9a009e68a2ebeef793a2d36062e48898eef9fa0c806175b3fd32609184cb'

  url "http://verteksi.net/files/osxspell/VoikkoSpellService-#{version}.dmg"
  name 'VoikkoSpellService'
  homepage 'http://verteksi.net/lab/osxspell/'
  license :gpl

  depends_on :macos => '>= :mavericks'

  service 'VoikkoSpellService.app'

  uninstall :signal => ['TERM', 'org.puimula.VoikkoSpellService']
end
