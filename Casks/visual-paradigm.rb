cask 'visual-paradigm' do
  version '15.0,20180404'
  sha256 '60ce4c5abc0de73d1b650a38ee966bbc3896d89fc4b7f7df4df0ce8a64fce9a1'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html',
          checkpoint: 'bbd335e9f3e07c9698690d45cbaf30b3f51250e8db3b83e5f854888ff33b9d27'
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
