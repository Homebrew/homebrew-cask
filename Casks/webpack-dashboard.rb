cask 'webpack-dashboard' do
  version :latest
  sha256 :no_check

  url "https://github.com/FormidableLabs/electron-webpack-dashboard/releases/download/0.0.1-beta.1/Webpack.Dashboard-1.0.0.dmg"
  name 'Webpack Dashboard'
  homepage 'https://github.com/FormidableLabs/electron-webpack-dashboard'

  app 'Webpack Dashboard.app'
end
