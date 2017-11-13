cask 'youku' do
  version '1.3.0.11073'
  sha256 'ac8b0f23963e39477e084b1a859e102642d3ec25d937212cb6a3bb53844b7cf5'

  url "http://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
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
