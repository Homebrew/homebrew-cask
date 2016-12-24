cask 'youku' do
  if MacOS.version <= :mountain_lion
    version '1.0.5.5031'
    sha256 'b7d9ff08bd87150dfa9a52a891d57002e0cbc3f73d181240adfa86a076793d55'
  else
    version '1.1.5.10190'
    sha256 '621ace860acd18512fa34b453bb54be0b0ce9d9d2de8d8aef2d39338fedd9d63'
  end

  url "http://desktop.youku.com/ugc/youkumac_#{version}.dmg"
  name 'Youku'
  name '优酷'
  homepage 'https://pd.youku.com/pc'

  app '优酷.app'

  zap delete: [
                '~/Library/Application Scripts/com.youku.mac',
                '~/Library/Containers/com.youku.mac',
              ]
end
