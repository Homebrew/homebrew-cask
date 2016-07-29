cask 'youku' do
  version '1.0.5.5031'
  sha256 'b7d9ff08bd87150dfa9a52a891d57002e0cbc3f73d181240adfa86a076793d55'

  url "http://desktop.youku.com/ugc/youkumac_#{version}.dmg"
  name '优酷Mac客户端'
  homepage 'http://pd.youku.com/pc'
  license :gratis

  app '优酷.app'
end
