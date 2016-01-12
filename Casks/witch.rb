cask 'witch' do
  if MacOS.release == :snow_leopard
    version '3.9.1'
    sha256 '5e46508e150ff16be14b9955abdcd15098376230ef71e3de6f15a056eec75e45'
    url "http://manytricks.com/download/witch/#{version}"
  else
    version :latest
    sha256 :no_check

    url 'http://manytricks.com/download/witch'
    appcast 'https://manytricks.com/witch/appcast.xml',
            :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  end

  name 'Witch'
  homepage 'https://manytricks.com/witch/'
  license :commercial

  prefpane 'Witch.prefPane'

  zap :delete => '~/Library/Preferences/com.manytricks.Witch.plist'
end
