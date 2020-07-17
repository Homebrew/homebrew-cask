cask 'voov-meeting' do
  version '1.6.0.520,1410000198'
  sha256 '581aeaa2004e8ab4df26a5383ff89fdb6886e1fcdcced9c60e96be2d49e4aa55'

  # down.qq.com/download/ was verified as official when first introduced to the cask
  url "https://down.qq.com/download/VooVMeeting_#{version.after_comma}_#{version.before_comma}.publish.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://voovmeeting.com/download/darwin'
  name 'VooV Meeting'
  name 'Tencent Meeting International Version'
  homepage 'https://voovmeeting.com/'

  app 'VooV Meeting.app'

  zap trash: [
               '~/Library/Containers/com.tencent.tencentmeeting',
               '~/Library/Preferences/com.tencent.tencentmeeting.plist',
               '~/Library/Saved Application State/com.tencent.tencentmeeting.savedState',
               '~/Library/WebKit/com.tencent.tencentmeeting',
               '~/Library/Application Support/com.tencent.rqd/com.tencent.tencentmeeting',
             ]
end
