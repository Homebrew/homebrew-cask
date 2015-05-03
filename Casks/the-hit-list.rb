cask :v1 => 'the-hit-list' do
  version :latest
  sha256 :no_check

  url 'http://www.potionfactory.com/files/thehitlist/TheHitList.zip'
  appcast 'http://www.potionfactory.com/appcast/thehitlist.php'
  name 'The Hit List'
  homepage 'http://www.potionfactory.com/thehitlist'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'The Hit List.app'
end
