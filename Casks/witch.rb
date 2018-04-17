cask 'witch' do
  if MacOS.version == :snow_leopard
    version '3.9.1'
    sha256 '5e46508e150ff16be14b9955abdcd15098376230ef71e3de6f15a056eec75e45'
    url "https://manytricks.com/download/witch/#{version}"
  else
    version '4.2'
    sha256 '49b636bced9a0c0add8a8404bcd4d3d1886ae7b94b7eaf05688f30cf49358bd4'

    url 'https://manytricks.com/download/witch'
    appcast 'https://manytricks.com/witch/appcast.xml',
            checkpoint: '461bedccb57d2dd83a6a1a300135b8873d76745ef458ee5ec1459604d165462a'
  end

  name 'Witch'
  homepage 'https://manytricks.com/witch/'

  auto_updates true

  prefpane 'Witch.prefPane'

  zap trash: '~/Library/Preferences/com.manytricks.Witch.plist'
end
