cask 'th-makerx' do
  version '3.6.0'
  sha256 '7b45203fc92355a4c1714a85c48bc6ac5ab9d9ee3762fa500c94cd68c6d60792'

  url "http://www5.wind.ne.jp/miko/mac_soft/th-maker_x/hqx/Th-MakerX_#{version.no_dots}.zip"
  name 'Th-MakerX'
  homepage 'http://www5.wind.ne.jp/miko/mac_soft/th-maker_x/index-en.html'

  app "Th-MakerX_#{version.no_dots}/Th-MakerX.app"

  zap delete: [
                '~/Library/Preferences/jp.ne.wind.miko.ThMakerX3.plist',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.ne.wind.miko.thmakerx3.sfl',
              ]
end
