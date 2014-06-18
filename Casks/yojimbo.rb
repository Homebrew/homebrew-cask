class Yojimbo < Cask
  url 'https://s3.amazonaws.com/BBSW-download/Yojimbo_4.0.3.dmg'
  homepage 'http://www.barebones.com/products/yojimbo/'
  version '4.0.3'
  sha256 '3d56523799db955ddf362e3b4b43a4a193b426ea76cf02d1647ecd56e5231c3b'
  link 'Yojimbo.app'
  after_install do
    system '/usr/bin/defaults', 'write', 'com.barebones.yojimbo4', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
