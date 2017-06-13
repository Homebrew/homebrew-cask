cask 'tiddlywiki' do
  version '0.0.8'
  sha256 'a4f54bb838f40fb0020d663be8d65aa155e4c8d03659d10d0ddc44776d723e29'

  url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-v#{version}.zip"
  appcast 'https://github.com/Jermolene/TiddlyDesktop/releases.atom',
          checkpoint: '3d35a2b54c339e8c1641bd4917f60a54259928f63800c04898b985ad042e925f'
  name 'TiddlyWiki'
  homepage 'https://github.com/Jermolene/TiddlyDesktop'

  app "TiddlyDesktop-mac64-v#{version}/TiddlyWiki.app"
end
