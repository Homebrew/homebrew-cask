cask 'visual-paradigm' do
  version '15.0,20180401'
  sha256 '3a43349d40c3444209a2cc795fec0916a3a63e90150698a35c7deaa9a10e989f'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html',
          checkpoint: '79ebc854be3fa7a2fe8436d40462f64c4aea3b380f1a52594706d69eadce4909'
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
