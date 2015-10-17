cask :v1 => 'wechat' do
  version '6.0.0'
  sha256 '391f888fb658bf6d15d0c8426946cba831627386'
  url 'http://dldir1.qq.com/foxmail/Mac/WeChat-en_US.dmg'
  name 'WeChat'
  homepage 'http://weixin.qq.com/cgi-bin/readtemplate?t=mac&lang=en'
  license :commercial
  app 'WeChat.app'
  uninstall :quit => 'com.tencent.xinWeChat'
end
