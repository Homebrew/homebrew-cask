cask 'yed' do
  version '3.18'
  sha256 'feecf8eba6957660b0923d7ba3ce81cfff9ac432e96dd08dff1aa75d43fa747b'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/products/yed'

  depends_on macos: '>= :mountain_lion'

  app 'yEd.app'
end
