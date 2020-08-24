cask 'toolreleases' do
  version '1.3.4,30'
  # sha256 is generated from the ToolReleases_v0.0.0.b00.zip file
  sha256 '933078535ca581d278b331761705b3791f03970ee8e14b62f24a2a6d74b8369a'

  url "https://github.com/DeveloperMaris/ToolReleases/releases/download/v#{version.before_comma}/ToolReleases_v#{version.before_comma}.b#{version.after_comma}.zip"
  appcast 'https://developermaris.github.io/ToolReleases/appcast.xml'
  name 'ToolReleases'
  desc 'This application for free retrieves, notifies and shows you the latest Apple tool releases (including Beta releases) from publicly available Apple RSS feed in a formatted list on your status bar so that you would not miss any new releases coming out.'
  homepage 'https://github.com/DeveloperMaris/ToolReleases'

  depends_on macos: '>= :catalina'

  app 'ToolReleases.app'
end
