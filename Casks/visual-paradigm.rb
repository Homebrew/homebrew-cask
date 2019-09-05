cask 'visual-paradigm' do
  version '16.0,20190902'
  sha256 '3a2cd5910c9d3f541ad89c75a22495f425ba111ae7a2069a2498d3b41626a096'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html',
          configuration: "#{version.before_comma.dots_to_underscores}_#{version.after_comma}"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
