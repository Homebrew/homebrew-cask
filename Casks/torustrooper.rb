cask :v1 => 'torustrooper' do
  version :latest
  sha256 :no_check

  url 'https://workram.com/downloads.php?f=TorusTrooper', :referer => 'https://workram.com/games'
  homepage 'http://workram.com/games/'
  license :unknown    # todo: improve this machine-generated value

  app 'TorusTrooper.app'
end
