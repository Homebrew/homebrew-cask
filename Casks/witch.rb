cask 'witch' do
  if MacOS.release == :snow_leopard
    version '3.9.1'
    sha256 '5e46508e150ff16be14b9955abdcd15098376230ef71e3de6f15a056eec75e45'
    url "http://manytricks.com/download/witch/#{version}"
  else
    version '3.9.7'
    sha256 '27862ad4de6c403c64849a834f3fde7efabe29e942d01e2204d4ee75d01fef5b'

    url 'http://manytricks.com/download/witch'
    appcast 'https://manytricks.com/witch/appcast.xml',
            checkpoint: '290d0c4ebb54bb54ef1bcb174b587ba31d2bdd43c59f22189b2aae7a3d0321d3'
  end

  name 'Witch'
  homepage 'https://manytricks.com/witch/'
  license :commercial

  auto_updates true

  prefpane 'Witch.prefPane'

  zap delete: '~/Library/Preferences/com.manytricks.Witch.plist'
end
