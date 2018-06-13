cask 'visual-paradigm' do
  version '15.0,20180602'
  sha256 'b7899d34138a3c185a32a9e90e51eaeaf38f3f8f380ea4241944ddd522b2c62b'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html'
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
