cask 'visual-paradigm-ce' do
  version '15.0,20180224'
  sha256 '4e76693571e801e3b3f394950a3b3381fdc584ec72bd9fc50807132a87615457'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vpce/checksum.html',
          checkpoint: '7f1497cca5c4156a4b26ab663587ac1cb960861198737f7269d8450b9cf1fe34'
  name 'Visual Paradigm Community Edition'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end
