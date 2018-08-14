cask 'texworks' do
  version '0.6.2,201704300713:7ecce17'
  sha256 '6ca09e0cd1007139d5ef0bb711812745ce20a3206ba97e812297bd301bac9820'

  # github.com/TeXworks/texworks was verified as official when first introduced to the cask
  url "https://github.com/TeXworks/texworks/releases/download/release-#{version.before_comma}/TeXworks-osx-#{version.before_comma}-#{version.after_comma.before_colon}-git_#{version.after_colon}.dmg"
  appcast 'https://github.com/TeXworks/texworks/releases.atom'
  name 'TeXworks'
  homepage 'https://www.tug.org/texworks/'

  app 'TeXworks.app'
end
