cask 'th-makerx' do
  version '3.7.0'
  sha256 '6c835eeb64a38f1dedabfe826703e2f4211adbbadcf4179fb2cb7200e149aca2'

  url "http://www5.wind.ne.jp/miko/mac_soft/th-maker_x/hqx/Th-MakerX_#{version.no_dots}.zip"
  appcast 'http://www5.wind.ne.jp/miko/mac_soft/th-maker_x/index-en.html',
          checkpoint: '8c3f8a4b62bbd6b5ce501adb39802514ff1d6a42524b2da42a48913e9382e04f'
  name 'Th-MakerX'
  homepage 'http://www5.wind.ne.jp/miko/mac_soft/th-maker_x/index-en.html'

  app "Th-MakerX_#{version.no_dots}/Th-MakerX.app"

  zap delete: [
                '~/Library/Preferences/jp.ne.wind.miko.ThMakerX3.plist',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.ne.wind.miko.thmakerx3.sfl*',
              ]
end
