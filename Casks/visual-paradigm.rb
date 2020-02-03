cask 'visual-paradigm' do
  version '16.1,20200111'
  sha256 'd386c48125c05ae67276bf76cce3371ec375eae0e84a4d6ce0a11839aed52bd2'

  url "https://eu8.dl.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.visual-paradigm.com/downloads/vp/checksum.html',
          configuration: "#{version.before_comma}/#{version.after_comma}"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
