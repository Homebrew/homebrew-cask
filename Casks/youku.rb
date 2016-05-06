cask 'youku' do
  version '1.0.4.4121'
  sha256 '433a243f769ee05517c5d49d6548b26b25dc6c2074d1ed00ca1369ddb4a4d17e'

  url "http://desktop.youku.com/ugc/youkumac_#{version}.dmg"
  name '优酷Mac客户端'
  homepage 'http://pd.youku.com/pc'
  license :gratis

  app '优酷.app'
end
