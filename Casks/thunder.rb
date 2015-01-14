cask :v1 => 'thunder' do
  version '2.6.6.1684'
  sha256 'ae19d8fd03d10a20c10ac82071b6f65e8d371cc5fe91cd3a062e7bad370b7772'

  url "http://down.sandai.net/mac/thunder_dl#{version}_Beta.dmg"
  name '迅雷'
  name 'Thunder'
  homepage 'http://mac.xunlei.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Thunder.app'
end
