cask 'visual-paradigm-ce' do
  version '15.0,20180404'
  sha256 '18aeeb7d89a3d9e62ae087d8b499e4c5e862f3b005ae48637cdc21ad9ed46edc'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vpce#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vpce/checksum.html',
          checkpoint: 'b97b1dd82ddd1433620eb4b40b4109f5c9dead19c37116a4efc7c3c464f7e507'
  name 'Visual Paradigm Community Edition'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end
