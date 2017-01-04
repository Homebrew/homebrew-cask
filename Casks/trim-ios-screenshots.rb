cask 'trim-ios-screenshots' do
  version '1.0.2'
  sha256 '3f30f05a6f3fd7adadb93e9da0cbe038d56c91d5380e674e13f9de3ebebf781c'

  url "https://github.com/osteslag/trim-ios-screenshots/releases/download/v#{version}/Trim_iOS_Screenshots-#{version}.zip"
  appcast 'https://github.com/osteslag/trim-ios-screenshots/releases.atom',
          checkpoint: 'bdc93d1552478ee4be878af55f80a4ac455d32ec8302bcb127f3392995e40174'
  name 'Trim iOS Screenshots'
  homepage 'https://github.com/osteslag/trim-ios-screenshots'

  app "Trim_iOS_Screenshots-#{version}/Trim iOS Screenshots.app"
end
