cask 'youku' do
  version '1.5.1.06202'
  sha256 '145b1a3f9de4384b6fe811533bbe33fcb3f810da5d32eb3323a9b97db79baa09'

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
