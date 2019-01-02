cask 'witch' do
  if MacOS.version == :snow_leopard
    version '3.9.1'
    sha256 '5e46508e150ff16be14b9955abdcd15098376230ef71e3de6f15a056eec75e45'
    url "https://manytricks.com/download/witch/#{version}"
  else
    version '4.3.1'
    sha256 'c9c7bea5b15fd93a1766d4fd5be22c8c92e055325ce310cee2ede2b019250ad3'

    url 'https://manytricks.com/download/witch'
    appcast 'https://manytricks.com/witch/appcast.xml'
  end

  name 'Witch'
  homepage 'https://manytricks.com/witch/'

  auto_updates true

  prefpane 'Witch.prefPane'

  zap trash: '~/Library/Preferences/com.manytricks.Witch.plist'
end
