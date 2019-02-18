cask 'visual-paradigm-ce' do
  version '15.2,20190201'
  sha256 '3d4fc0ce84ef5c9e5d2829876a228d0e61f1cf3045668364e25af3ea839c4af1'

  url "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vpce/checksum.html'
  name 'Visual Paradigm Community Edition'
  homepage 'https://www.visual-paradigm.com/'

  # Renamed to avoid conflict with visual-paradigm.
  app 'Visual Paradigm.app', target: 'Visual Paradigm CE.app'
end
