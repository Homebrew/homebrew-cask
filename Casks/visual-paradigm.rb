cask 'visual-paradigm' do
  version '14.2,20180202'
  sha256 '31dc737115fa7022b8d9c1d5b470b1cd46b6f91501f5fabcf79775bfd7415693'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html',
          checkpoint: 'fd4f59ca81d9a6a11532ab0a89ac34e39b5de2fee0a55098bb1e98ad7ea94e77'
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
