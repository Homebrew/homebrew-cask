cask :v1 => 'utox' do
  version :latest
  sha256 :no_check

  url 'https://zodiaclabs.org/storage/c1/uTox.dmg'
  name 'uTox'
  name 'Tox'
  homepage 'http://utox.org/'
  license :gpl

  app 'uTox.app'
end
