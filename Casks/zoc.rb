cask 'zoc' do
  version '7.15.4'
  sha256 '6a21db9b5d3c9d05d30d518b0fd2e0f3c1b3d147fc173632571812bf3ecb52eb'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "http://www.emtec.com/downloads/zoc/zoc#{version.no_dots}_changes.txt",
          checkpoint: '0347cdd5482d262c41dd1da68bee7a43ec1c598252b8685129c766e83fbc8250'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
