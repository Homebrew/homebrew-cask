cask :v1 => 'wechat' do
  version :latest
  sha256 :no_check

  url 'http://dldir1.qq.com/foxmail/Mac/WeChat-en_US.dmg'
  homepage 'http://weixin.qq.com/cgi-bin/readtemplate?t=mac'
  license :unknown    # todo: improve this machine-generated value

  app 'WeChat.app'
end
