cask 'td-agent' do
  version '2.3.5-1'
  sha256 '2f2973ed29a3edd416cc5dad6b924751a2cdb8cdbb2792dc5344f3e13529b190'

  # packages.treasuredata.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://packages.treasuredata.com.s3.amazonaws.com/2/macosx/td-agent-#{version}.dmg"
  appcast 'https://td-agent-package-browser.herokuapp.com/2/macosx',
          checkpoint: '166acaf50b9b3fc835d33f65ebfe4021548d065fe882f922a850e9862cedcb55'
  name 'td-agent'
  homepage 'https://www.fluentd.org/'

  pkg "td-agent-#{version}.pkg"

  uninstall pkgutil:   'test.treasuredatainc.pkg.td-agent',
            launchctl: 'td-agent'
end
