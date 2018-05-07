cask 'zoc' do
  version '7.18.2'
  sha256 '45108837d36593d5a017c92e61232de9fa081ccc6b30f31ad9e0aa57b8fb6171'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: '21ccad71659c409dc47b8d4c5081a21ad800cb9311b11bd5d36d5f7d7e8046de'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
