cask :v1 => 'witch' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/witch'
  homepage 'http://manytricks.com/witch/'
  license :unknown

  prefpane 'Witch.prefPane'
  zap :delete => '~/Library/Preferences/com.manytricks.Witch.plist'
end
