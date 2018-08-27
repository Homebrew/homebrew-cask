cask 'yed' do
  version '3.18.1.1'
  sha256 'cc53bfb0c9bb04252aa1c2599b0b784920f36c1887c02543ed293ad16c4ddd60'

  url "https://www.yworks.com/resources/yed/demo/yEd-#{version}_with-JRE10.dmg"
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/products/yed'

  depends_on macos: '>= :mountain_lion'

  app 'yEd.app'
end
