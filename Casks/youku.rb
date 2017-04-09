cask 'youku' do
  if MacOS.version == :mountain_lion
    version '1.0.6.01094'
    sha256 'ab17b83f88f1035bda7d20c064bfd59c35925c373aed510f1612f3473ec0c37e'
  else
    version '1.2.1.03315'
    sha256 'b7a80f361ee1cf0c5160e079623d8f25769b3b6ce8ad29e2ce8fa64c63de917e'
  end

  url "http://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
  name 'Youku'
  name '优酷'
  homepage 'https://pd.youku.com/pc'

  depends_on macos: '>= :mountain_lion'

  app '优酷.app'

  zap delete: [
                '~/Library/Application Scripts/com.youku.mac',
                '~/Library/Containers/com.youku.mac',
              ]
end
