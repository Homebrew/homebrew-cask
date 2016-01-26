cask 'torustrooper' do
  version :latest
  sha256 :no_check

  url 'https://workram.com/downloads.php?f=TorusTrooper', referer: 'https://workram.com/games'
  name 'Torus Trooper'
  homepage 'https://workram.com/games/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TorusTrooper.app'
end
