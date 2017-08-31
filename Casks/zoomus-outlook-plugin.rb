cask 'zoomus-outlook-plugin' do
  version :latest
  sha256 :no_check

  url 'https://zoom.us/client/latest/ZoomMacOutlookPlugin.pkg'
  name 'Zoom.us Outlook Plugin'
  homepage 'https://www.zoom.us/'

  auto_updates true

  pkg 'ZoomMacOutlookPlugin.pkg'

  uninstall script:    {
                         executable: '/Applications/ZoomOutlookPlugin/Uninstall.app/Contents/MacOS/Uninstall',
                         sudo:       true,
                       },
            pkgutil:   'ZoomMacOutlookPlugin.pkg',
            launchctl: 'us.zoom.pluginagent',
            quit:      'us.zoom.pluginagent'
end
