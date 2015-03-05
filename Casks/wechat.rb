cask :v1 => 'wechat' do
  version :latest
  sha256 :no_check

  url 'http://dldir1.qq.com/foxmail/Mac/WeChat-en_US.dmg'
  homepage 'http://weixin.qq.com/cgi-bin/readtemplate?t=mac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'WeChat.app'

  zap :delete => [
                  '~/Library/Application Support/Wechat',
                  '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.tencent.xinWeChat',
                  '~/Library/Caches/com.tencent.xinWeChat',
                  '~/Library/LaunchAgents/com.tencent.xin.WeChatHelper.plist',
                  '~/Library/Saved Application State/com.tencent.xinWeChat.savedState',
                  '~/Library/WechatPrivate',
                 ]
end
