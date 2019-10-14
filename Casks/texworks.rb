cask 'texworks' do
  version '0.6.3,201903161730:a2470ca'
  sha256 '618d16f4bf915e3d73d354263fa4b557dbb165d6868b414ecc47973ddc92a986'

  # github.com/TeXworks/texworks was verified as official when first introduced to the cask
  url "https://github.com/TeXworks/texworks/releases/download/release-#{version.before_comma}/TeXworks-osx-#{version.before_comma}-#{version.after_comma.before_colon}-git_#{version.after_colon}.dmg"
  appcast 'https://github.com/TeXworks/texworks/releases.atom'
  name 'TeXworks'
  homepage 'https://www.tug.org/texworks/'

  depends_on macos: '>= :high_sierra'

  app 'TeXworks.app'
end
