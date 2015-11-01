cask :v1 => 'the-hit-list' do
  version :latest
  sha256 :no_check

  url 'http://www.potionfactory.com/files/thehitlist/TheHitList.zip'
  appcast 'http://www.potionfactory.com/appcast/thehitlist.php'
  name 'The Hit List'
  homepage 'http://www.potionfactory.com/thehitlist'
  license :commercial

  app 'The Hit List.app'
end
