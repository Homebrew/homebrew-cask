cask 'tiddlywiki' do
  version '0.0.7'

  if Hardware::CPU.is_32_bit?
    sha256 '76f931a7198847642ce2dee7a3b6077ef5e911b1a0b91a70d25d139e9f448f42'
    url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac32-v#{version}.zip"
    app "TiddlyDesktop-mac32-v#{version}/TiddlyWiki.app"
  else
    sha256 'c52d1565910df1352523b052fe32ef3f7dc6d7c6abe4baee6d311592993bcb8a'
    url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac64-v#{version}.zip"
    app "TiddlyDesktop-mac64-v#{version}/TiddlyWiki.app"
    appcast 'https://github.com/Jermolene/TiddlyDesktop/releases.atom',
            checkpoint: 'cedb811780d4da29c7b4ee6a8437f4487bb66f5d58f770a2931108a9bd04bc57'
  end

  name 'TiddlyWiki'
  homepage 'https://github.com/Jermolene/TiddlyDesktop'
  license :bsd
end
