cask :v1 => 'wechat' do
  version 'latest'
  sha256 'no_check'
  url 'http://dldir1.qq.com/foxmail/Mac/WeChat-en_US.dmg'
  name 'WeChat'
  homepage 'http://weixin.qq.com/cgi-bin/readtemplate?t=mac&lang=en'
  license :commercial
  app 'WeChat.app'
  uninstall :quit => 'com.tencent.xinWeChat'
end
