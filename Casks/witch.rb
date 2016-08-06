cask 'witch' do
  if MacOS.release == :snow_leopard
    version '3.9.1'
    sha256 '5e46508e150ff16be14b9955abdcd15098376230ef71e3de6f15a056eec75e45'
    url "http://manytricks.com/download/witch/#{version}"
  else
    version '3.9.8'
    sha256 '6a290c9fcc6354044fb077d8ae3a6a7221cd5d4e19bf3a872ff09da95b9a7509'

    url 'https://manytricks.com/download/witch'
    appcast 'https://manytricks.com/witch/appcast.xml',
            checkpoint: '239d72b3fac6a2c8ba69e8028cb3bed7de7d4065c5335f907183457a8db2e114'
  end

  name 'Witch'
  homepage 'https://manytricks.com/witch/'
  license :commercial

  auto_updates true

  prefpane 'Witch.prefPane'

  zap delete: '~/Library/Preferences/com.manytricks.Witch.plist'
end
