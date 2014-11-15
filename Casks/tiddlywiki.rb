cask :v1 => 'tiddlywiki' do
  version '0.0.3'
  sha256 'b96e44b88d6ff421b0d35644862c4e474ba7099f597f0dc8d530f467d31abd5c'

  url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac-#{version}.zip"
  homepage 'https://github.com/Jermolene/TiddlyDesktop'
  license :oss

  app 'TiddlyWiki.app'
end
