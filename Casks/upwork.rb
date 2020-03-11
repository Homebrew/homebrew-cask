cask 'upwork' do
  version '5.3.3.871,51d563431f844aff'
  sha256 '2a46292b6fb274cd8b2d1f0653a20856f4352bb3ef60b2b20669669238fda6a8'

  url "https://updates-desktopapp.upwork.com/binaries/v#{version.before_comma.dots_to_underscores}_#{version.after_comma}/Upwork.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://updates-desktopapp.upwork.com/binaries/versions-mac.json&splitter_1=Beta&index_1=0'
  name 'Upwork'
  homepage 'https://www.upwork.com/'

  app 'Upwork.app'

  zap trash: [
               '~/Library/Application Support/Upwork',
               '~/Library/Caches/Upwork',
               '~/Library/Logs/Upwork',
               '~/Library/Saved Application State/com.upwork.upwork.savedState',
             ]
end
