cask 'tiddlywiki' do
  version '0.0.8'
  sha256 'a4f54bb838f40fb0020d663be8d65aa155e4c8d03659d10d0ddc44776d723e29'

  url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-v#{version}.zip"
  appcast 'https://github.com/Jermolene/TiddlyDesktop/releases.atom',
          checkpoint: 'cedb811780d4da29c7b4ee6a8437f4487bb66f5d58f770a2931108a9bd04bc57'
  name 'TiddlyWiki'
  homepage 'https://github.com/Jermolene/TiddlyDesktop'

  app "TiddlyDesktop-mac64-v#{version}/TiddlyWiki.app"
end
