cask 'visual-paradigm' do
  version '15.1,20181102'
  sha256 'ee8f46331905e42f85b4f48bee2ebfe14b3bf4842649b8b2fbf21a40aa6ccac1'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html'
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
