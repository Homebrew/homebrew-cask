cask :v1 => 'tiddlywiki' do
  version '0.0.5'

  if Hardware::CPU.is_32_bit?
    sha256 '42512d123afe38a1ad40562fcb34c7556bf76930a96ed47ba30e98ff7fe8f76e'
    url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac32-v#{version}.zip"
  else
    sha256 '59d34e2fb142d776dc33d9738a8f5032274f8a580ee28bd37b35b6f288c05e65'
    url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-v#{version}.zip"
    appcast 'https://github.com/Jermolene/TiddlyDesktop/releases.atom'
  end

  name 'TiddlyWiki'
  homepage 'https://github.com/Jermolene/TiddlyDesktop'
  license :bsd

  app 'TiddlyWiki.app'
end
