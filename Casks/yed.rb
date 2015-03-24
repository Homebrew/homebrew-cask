cask :v1 => 'yed' do
  version '3.14.1'
  sha256 '1db07a4e108c13ed4e28ebec30d6acf4fe7b593a78ceeeed3e5a1c9d1132c512'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  homepage 'http://www.yworks.com/en/products/yfiles/yed/'
  license :gratis
  tags :vendor => 'yWorks'

  app 'yEd.app'

  depends_on :macos => '>= 10.8'
end
