cask :v1 => 'witch' do
  if MacOS.version == :snow_leopard
    version '3.9.1'
    sha256 '5e46508e150ff16be14b9955abdcd15098376230ef71e3de6f15a056eec75e45'
    url 'http://manytricks.com/download/witch/3.9.1'
  else
    version :latest
    sha256 :no_check

    url 'http://manytricks.com/download/witch'
  end

  homepage 'http://manytricks.com/witch/'
  license :unknown    # todo: improve this machine-generated value

  prefpane 'Witch.prefPane'

  zap :delete => '~/Library/Preferences/com.manytricks.Witch.plist'
end
