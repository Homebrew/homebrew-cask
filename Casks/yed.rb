cask 'yed' do
  version '3.17.1'
  sha256 '9af86544fbfd86e2add60d8ebcb7e49783e51d111b40105cb9e8e568368dfa95'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/products/yed'

  depends_on macos: '>= :mountain_lion'

  app 'yEd.app'
end
