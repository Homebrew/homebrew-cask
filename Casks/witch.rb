cask :v1 => 'witch' do
  if MacOS.release == :snow_leopard
    version '3.9.1'
    sha256 '5e46508e150ff16be14b9955abdcd15098376230ef71e3de6f15a056eec75e45'
    url 'http://manytricks.com/download/witch/3.9.1'
  else
    version :latest
    sha256 :no_check

    url 'http://manytricks.com/download/witch'
    appcast 'http://manytricks.com/witch/appcast.xml',
            :sha256 => '36fc6fa7454af97645ec12d1ee76fed2ff3a4bf6339e931b257fe75bd46f5027'
  end

  name 'Witch'
  homepage 'http://manytricks.com/witch/'
  license :commercial

  prefpane 'Witch.prefPane'

  zap :delete => '~/Library/Preferences/com.manytricks.Witch.plist'
end
