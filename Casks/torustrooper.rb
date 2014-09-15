class Torustrooper < Cask
  version 'latest'
  sha256 :no_check

  url 'https://workram.com/downloads.php?f=TorusTrooper', :referer => 'https://workram.com/games'
  homepage 'http://workram.com/games/'

  app 'TorusTrooper.app'
end
