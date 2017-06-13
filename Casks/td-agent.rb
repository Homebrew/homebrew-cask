cask 'td-agent' do
  version '2.3.0-0'
  sha256 '4c80ea9c88ced5c44ae96fd5e2e41aa2d3c3e2fea3674a79eda1615c26187889'

  # packages.treasuredata.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://packages.treasuredata.com.s3.amazonaws.com/2/macosx/td-agent-#{version}.dmg"
  appcast 'https://td-agent-package-browser.herokuapp.com/2/macosx',
          checkpoint: '0464c337583625e3604e30bbc6434f018cb7034c200710c2dd5965a8fa18ea47'
  name 'td-agent'
  homepage 'https://www.fluentd.org/'

  pkg "tdagent-#{version}.pkg"

  uninstall pkgutil:   'test.treasuredatainc.pkg.tdagent2',
            launchctl: 'td-agent'
end
