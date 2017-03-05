cask 'zoc' do
  version '7.12.2'
  sha256 '241520a1946964dff0470aa7fb160b43b95d58fba13cfff5ad118aac4d5cef1e'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
