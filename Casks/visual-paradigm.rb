cask 'visual-paradigm' do
  version '15.0,20180501'
  sha256 'a8f57d3cafad34d7f70b1acb7537a6e7c680ffd415581b419698fe1a77020c05'

  url "https://usa6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.visual-paradigm.com/downloads/vp/checksum.html',
          checkpoint: 'db4074c50a7bf853376cc2ada3e710c6e9ae3cd1f22156790f1a36662fe839e7'
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
