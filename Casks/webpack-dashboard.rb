cask 'webpack-dashboard' do
  version '0.0.1-beta.1,1.0.0'
  sha256 '8ec0c3308aa9c6adcdec8275ff0dfff31931cbcaaca909539399bdef5627e503'

  url "https://github.com/FormidableLabs/electron-webpack-dashboard/releases/download/#{version.before_comma}/Webpack.Dashboard-#{version.after_comma}.dmg"
  appcast 'https://github.com/FormidableLabs/electron-webpack-dashboard/releases.atom',
          checkpoint: '23bedef2e2105d640f2e4af6642b766e89a6cfa65c80c20794efbcd76867887a'
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
