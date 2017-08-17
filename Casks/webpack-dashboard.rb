cask 'webpack-dashboard' do
  version '0.0.1-beta.1,1.0.0'
  sha256 :no_check

  url "https://github.com/FormidableLabs/electron-webpack-dashboard/releases/download/#{version.before_comma}/Webpack.Dashboard-#{version.after_comma}.dmg"
  name 'Webpack Dashboard'
  homepage 'https://github.com/FormidableLabs/electron-webpack-dashboard'

  app 'Webpack Dashboard.app'
end
