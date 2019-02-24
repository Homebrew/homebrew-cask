cask 'visual-paradigm' do
  version '15.2,20190201'
  sha256 'da6a9d4f21579a5323c50cc1026a778ccb654fecd3e74eb5912dcdf54a9ab354'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html'
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
