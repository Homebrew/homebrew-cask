class Witch < Cask
  version 'latest'
  sha256 :no_check

  url 'http://manytricks.com/download/witch'
  homepage 'http://manytricks.com/witch/'

  prefpane 'Witch.prefPane'
  zap :files => '~/Library/Preferences/com.manytricks.Witch.plist'
end
