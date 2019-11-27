cask 'visual-paradigm' do
  version '16.0,20191108'
  sha256 '927aff96a9f509cce080f526cff1c932bd17aaa5c8024a6ed039ee7ad131bbaf'

  url "https://eu8.dl.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.before_comma.dots_to_underscores}_#{version.after_comma}_OSX_WithJRE.dmg"
  appcast "https://eu8.dl.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/checksum.html",
          configuration: "#{version.before_comma.dots_to_underscores}_#{version.after_comma}"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  app 'Visual Paradigm.app'
end
