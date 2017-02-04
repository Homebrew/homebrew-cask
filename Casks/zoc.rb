cask 'zoc' do
  version '7.12.0'
  sha256 'e4e07fe4dbcc86f90bc0adac896d5808bb7eaa8364a19232575289821824dbcd'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
