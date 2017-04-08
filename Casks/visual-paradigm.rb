cask 'visual-paradigm' do
  version '14.0,20170403'
  sha256 '49cdf04df26c9d986adb9fe9f525e5c885d5c41488b45fbfcccf5c9497487fe4'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
