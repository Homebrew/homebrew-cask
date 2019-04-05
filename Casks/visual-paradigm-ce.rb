cask 'visual-paradigm-ce' do
  version '15.2,20190401'
  sha256 'e2a0c6bcb5694893e04a0cd1a95803640f5a20d117f2f6c5ee90108cea0ccc06'

  url "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vpce/checksum.html'
  name 'Visual Paradigm Community Edition'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end
