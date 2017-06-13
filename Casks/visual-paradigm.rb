cask 'visual-paradigm' do
  version '14.1,20170601'
  sha256 '5580528f7c61176d4ee44f0c6bec009983f6031a1fb12735c3a44fc67704338b'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
