cask 'yed' do
  version '3.18.1'
  sha256 'faffb67a46a24576512460a4d5817be98170ba2333c08e22b682e1cd2f3e85a6'

  url "https://www.yworks.com/resources/yed/demo/yEd-#{version}_with-JRE10.dmg"
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/products/yed'

  depends_on macos: '>= :mountain_lion'

  app 'yEd.app'
end
