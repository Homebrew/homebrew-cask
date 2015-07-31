cask :v1 => 'voikkospellservice' do
  version '1.0.5b1'
  sha256 '2c01a3e44a0a689763e85b8478e7c13659e5d784336916ba9f7c7f0f36cce159'

  url 'http://verteksi.net/files/osxspell/VoikkoSpellService-1.0.5b1.dmg'
  name 'VoikkoSpellService'
  homepage 'http://verteksi.net/lab/osxspell/'
  license :gpl

  service 'VoikkoSpellService.app'

  uninstall :signal => ['TERM', 'org.puimula.VoikkoSpellService']
end
