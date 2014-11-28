cask :v1 => 'the-unarchiver' do
  version '3.9.1'
  sha256 '34fa3410237e17b2cdceb801a84ed8db93c74ac0db551ffe65913c2134ebbf05'

  url "https://theunarchiver.googlecode.com/files/TheUnarchiver#{version}.zip"
  homepage 'http://unarchiver.c3.cx/'
  license :oss

  app 'The Unarchiver.app'
end
