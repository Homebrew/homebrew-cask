cask 'visual-paradigm' do
  version '14.1,20170723'
  sha256 'cffc7c64354a791135cd5d9032621fa7d5a65b87b66ef5f568dce84cd30c74f4'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
