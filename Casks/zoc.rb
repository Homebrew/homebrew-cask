cask 'zoc' do
  version '7.11.2'
  sha256 '1526f061f6212afa3cafe822cd47e27906f9d71217f0279ec27d9613768ec06e'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
