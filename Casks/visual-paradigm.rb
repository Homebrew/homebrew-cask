cask 'visual-paradigm' do
  version '16.0,20190901'
  sha256 'cbe48b4d5b1e929dbf27c6ed5f26bc4a2039a171aec70a6c2aba43c0461830f8'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html',
          configuration: "#{version.before_comma.dots_to_underscores}_#{version.after_comma}"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
