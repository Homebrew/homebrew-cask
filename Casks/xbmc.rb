cask :v1 => 'xbmc' do
  version '13.2'
  sha256 '5f76f75971aa27cc74dfeaca3633d5e079ab7731deabb0f8be909e5e871a9223'

  url "http://mirrors.xbmc.org/releases/osx/x86_64/xbmc-#{version}-Gotham-x86_64.dmg"
  homepage 'http://xbmc.org/'
  license :oss

  app 'XBMC.app'
end
