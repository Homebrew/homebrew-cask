cask :v1 => 'trickster' do
  version '2.2.1'
  sha256 '6a6531e8c8c7672bf422c496a478ee26f184f1c63036d7f1125913d69a067292'

  url "http://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'http://dl.apparentsoft.com/trickster.rss',
          :sha256 => '86fca660fb6674d67a5b5f3285e2fa463401c36c79bbaa65cc6f15091070a58d'
  homepage 'http://www.apparentsoft.com/trickster/'
  license :unknown    # todo: improve this machine-generated value

  app 'Trickster.app'
end
