cask 'youku' do
  version '1.7.6.09273'
  sha256 'fcb6674922171c8df6d6588715897d9ec46f15bd1397ed5f50cccb9806fd118d'

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
