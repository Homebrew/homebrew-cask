cask 'texworks' do
  version '0.6.4,202003151024:982c11c'
  sha256 '081cf97fc463203d50b3b8032529853cfb4088d55d87121dde98a4498c62efd9'

  # github.com/TeXworks/texworks was verified as official when first introduced to the cask
  url "https://github.com/TeXworks/texworks/releases/download/release-#{version.before_comma}/TeXworks-osx-#{version.before_comma}-#{version.after_comma.before_colon}-git_#{version.after_colon}.dmg"
  appcast 'https://github.com/TeXworks/texworks/releases.atom'
  name 'TeXworks'
  homepage 'https://www.tug.org/texworks/'

  depends_on macos: '>= :high_sierra'

  app 'TeXworks.app'
end
