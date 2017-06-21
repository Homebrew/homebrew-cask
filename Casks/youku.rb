cask 'youku' do
  if MacOS.version == :mountain_lion
    version '1.0.6.01094'
    sha256 'ab17b83f88f1035bda7d20c064bfd59c35925c373aed510f1612f3473ec0c37e'
  else
    version '1.2.3.04252'
    sha256 'ae5141a54302b61e4a49d4c1d529fa2ecdf737121960ef563fd2fee58bb70c8a'
  end

  url "http://pcclient.download.youku.com/ikumac/youkumac_#{version}.dmg"
  name 'Youku'
  name '优酷'
  homepage 'https://pd.youku.com/pc'

  depends_on macos: '>= :mountain_lion'

  app '优酷.app'

  zap trash: [
               '~/Library/Application Scripts/com.youku.mac',
               '~/Library/Containers/com.youku.mac',
             ]
end
