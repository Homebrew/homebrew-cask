cask 'visual-paradigm' do
  version '14.2,20171107'
  sha256 '9b19e7d791c4dc1bb83c8e6771d29dbc274112ffbded11885056176495c092e1'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html',
          checkpoint: 'c540e47c8f8ad0ce3c04faaf40cecd2dff4a1a927750d0697bf74dc6c6b6ea1e'
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
