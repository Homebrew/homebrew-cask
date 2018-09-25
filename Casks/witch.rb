cask 'witch' do
  if MacOS.version == :snow_leopard
    version '3.9.1'
    sha256 '5e46508e150ff16be14b9955abdcd15098376230ef71e3de6f15a056eec75e45'
    url "https://manytricks.com/download/witch/#{version}"
  else
    version '4.3'
    sha256 '70e686811b766ba1551dd4e6058096beb06959bb4899e19ed2daf66bf66f8f51'

    url 'https://manytricks.com/download/witch'
    appcast 'https://manytricks.com/witch/appcast.xml'
  end

  name 'Witch'
  homepage 'https://manytricks.com/witch/'

  auto_updates true

  prefpane 'Witch.prefPane'

  zap trash: '~/Library/Preferences/com.manytricks.Witch.plist'
end
