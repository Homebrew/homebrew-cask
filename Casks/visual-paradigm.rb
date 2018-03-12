cask 'visual-paradigm' do
  version '15.0,20180231'
  sha256 '236f0f167a484ccb910494affb8200e125f5ddd7ec6982c778088eb04407841b'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html',
          checkpoint: '8886136c727126964d9a77f21e119fa8c4d956ebd086d7bc01c1ee7baa524625'
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
