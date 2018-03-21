cask 'webpack-dashboard' do
  version '1.0.0'
  sha256 'aecc8a4831c8ca9d709c789821c6971f341596bccde8f6bf255cfeda3ecf43eb'

  url "https://github.com/FormidableLabs/electron-webpack-dashboard/releases/download/v#{version}/webpack-dashboard-app-#{version}.dmg"
  appcast 'https://github.com/FormidableLabs/electron-webpack-dashboard/releases.atom',
          checkpoint: '5d3abed0343cd890d44a8089cfab8871260cac0c2c9ca808f3f650cb0520da62'
  name 'Webpack Dashboard'
  homepage 'https://github.com/FormidableLabs/electron-webpack-dashboard'

  app 'Webpack Dashboard.app'

  zap trash: [
               '~/Library/Application Support/webpack-dashboard-app',
               '~/Library/Preferences/org.formidable.WebpackDashboard.helper.plist',
               '~/Library/Preferences/org.formidable.WebpackDashboard.plist',
               '~/Library/Saved Application State/org.formidable.WebpackDashboard.savedState',
             ]
end
