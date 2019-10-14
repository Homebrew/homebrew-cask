cask 'visual-paradigm' do
  version '16.0,20191001'
  sha256 '3b8e31a29daad3d321fcc2e14955e77ceab458cd1f54c98f40f70fc749cc92d7'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html',
          configuration: "#{version.before_comma.dots_to_underscores}_#{version.after_comma}"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
