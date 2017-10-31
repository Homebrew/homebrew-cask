cask 'visual-paradigm' do
  version '14.2,20171007'
  sha256 'e7d98557576cb40fbf41f5a334d8d87709cc905017600330df6af879e899acd9'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
