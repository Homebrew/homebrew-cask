cask 'witch' do
  if MacOS.version == :snow_leopard
    version '3.9.1'
    sha256 '5e46508e150ff16be14b9955abdcd15098376230ef71e3de6f15a056eec75e45'
    url "https://manytricks.com/download/witch/#{version}"
  else
    version '4.0'
    sha256 'f6b1b1ee541f905cc20f73b81e559db8a3bfeb8c14bc52ca61618398d0d4dffc'

    url 'https://manytricks.com/download/witch'
    appcast 'https://manytricks.com/witch/appcast.xml',
            checkpoint: '61a291c0f00247194c9bd6ece2fa14d529ffb8bc6f94a3ba86a32dc371b8445e'
  end

  name 'Witch'
  homepage 'https://manytricks.com/witch/'

  auto_updates true

  prefpane 'Witch.prefPane'

  zap delete: '~/Library/Preferences/com.manytricks.Witch.plist'
end
