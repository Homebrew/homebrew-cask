cask 'youku' do
  version '1.8.1.04072'
  sha256 '6644ec43d95f764662889b4e7c9c078283c6cd9b5dd3b8084fa456c53de9a775'

  url "https://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
  appcast 'https://pd.youku.com/pc'
  name 'Youku'
  name '优酷'
  homepage 'https://pd.youku.com/pc'

  app '优酷.app'

  zap trash: [
               '~/Library/Application Scripts/com.youku.mac',
               '~/Library/Containers/com.youku.mac',
             ]
end
