cask 'visual-paradigm' do
  version '16.0,20190869'
  sha256 '5076e513c2d820652f6c5029865ad723331f0e64b91d8b3d4cb7aa08609f7396'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html',
          configuration: "#{version.before_comma.dots_to_underscores}_#{version.after_comma}"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
