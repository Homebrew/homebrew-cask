cask 'witch' do
  if MacOS.release == :snow_leopard
    version '3.9.1'
    sha256 '5e46508e150ff16be14b9955abdcd15098376230ef71e3de6f15a056eec75e45'
    url "http://manytricks.com/download/witch/#{version}"
  else
    version '3.9.6'
    sha256 'b7f62879e740984a4515038f56cf706d9bcba617791bf21800edc72a5c3aeb08'

    url 'http://manytricks.com/download/witch'
    appcast 'https://manytricks.com/witch/appcast.xml',
            checkpoint: '36fc6fa7454af97645ec12d1ee76fed2ff3a4bf6339e931b257fe75bd46f5027'
  end

  name 'Witch'
  homepage 'https://manytricks.com/witch/'
  license :commercial

  prefpane 'Witch.prefPane'

  zap delete: '~/Library/Preferences/com.manytricks.Witch.plist'
end
