cask 'youku' do
  version '1.5.13.10307'
  sha256 'aabc25c3844ad69a0bc8c2fb32ceb9076324b2aab9df0ccb4095a2609140f4b6'

  url "https://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
  name 'Youku'
  name '优酷'
  homepage 'https://pd.youku.com/pc'

  depends_on macos: '>= :mavericks'

  app '优酷.app'

  zap trash: [
               '~/Library/Application Scripts/com.youku.mac',
               '~/Library/Containers/com.youku.mac',
             ]
end
