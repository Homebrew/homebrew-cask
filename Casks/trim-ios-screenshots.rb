cask :v1 => 'trim-ios-screenshots' do
  version '1.0.1'
  sha256 '08be76899e40a99183cde27639ae44329096dd01f8c90619e4decc6243af6ed1'

  url "https://github.com/downloads/osteslag/trim-ios-screenshots/Trim_iOS_Screenshots-#{version}.zip"
  homepage 'https://github.com/osteslag/trim-ios-screenshots'
  license :oss

  app 'Trim iOS Screenshots.app'
end
