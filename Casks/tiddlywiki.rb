cask :v1 => 'tiddlywiki' do
  version '0.0.6'

  if Hardware::CPU.is_32_bit?
    sha256 'a7a03df0210949362b72d070ac753aa54fd82c8ee9de774d46596dedbcec768e'
    url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac32-v#{version}.zip"
    app "TiddlyDesktop-mac32-v#{version}/TiddlyWiki.app"
  else
    sha256 '765a867bb0472132fddc619ef59f83e732825407a85c05724d0c8d5306a95f9a'
    url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-v#{version}.zip"
    app "TiddlyDesktop-mac64-v#{version}/TiddlyWiki.app"
    appcast 'https://github.com/Jermolene/TiddlyDesktop/releases.atom'
  end

  name 'TiddlyWiki'
  homepage 'https://github.com/Jermolene/TiddlyDesktop'
  license :bsd
end
