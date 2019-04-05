cask 'wechatwebdevtools' do
  version '1.02.1903251'
  sha256 '1b65dfd2dc547180d31f1883458e95ade673197194489d86c73f5c9bed3bd59a'

  url "https://dldir1.qq.com/WechatWebDev/#{version.major}.2.0/20#{version.patch}/wechat_devtools_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://servicewechat.com/wxa-dev-logic/download_redirect%3Ftype=darwin%26from=mpwiki'
  name 'wechat web devtools'
  name '微信web开发者工具'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'

  zap trash: [
               '~/Library/Application Support/微信web开发者工具',
               '~/Library/Caches/微信web开发者工具',
               '~/Library/Preferences/com.tencent.wechat.devtools.plist',
               '~/Library/Saved Application State/com.tencent.wechat.devtools.savedState',
             ]
end
