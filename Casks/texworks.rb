cask 'texworks' do
  version '0.6.1,201605010904:3614278'
  sha256 'd447ba603da349cb893fead53efcdc3bf9a5165c0ca22f5ad5611865deabc596'

  # github.com/TeXworks/texworks was verified as official when first introduced to the cask
  url "https://github.com/TeXworks/texworks/releases/download/release-#{version.before_comma}/TeXworks-osx-#{version.before_comma}-#{version.after_comma.before_colon}-git_#{version.after_colon}.dmg"
  appcast 'https://github.com/TeXworks/texworks/releases.atom',
          checkpoint: '89401a7527b606e156e2bd8eb4ee4306dfcf599ef261be39c04ac530de727f9d'
  name 'TeXworks'
  homepage 'https://www.tug.org/texworks/'

  app 'TeXworks.app'
end
