cask 'tencent-video' do
  version '1.3.0.30662'
  sha256 'd78bee2625bc4fb23c5914fd32952b6ba71fcb8d0250e62697eb1520f00ee15f'

  url "https://dldir1.qq.com/qqtv/mac/TencentVideo_V#{version}.dmg"
  name 'Tencent Video'
  homepage 'https://v.qq.com/download.html'

  # Cask name is after product name in Chinese. I don't see the advantage of renaming at this point.
  app 'QQLive.app'
end
