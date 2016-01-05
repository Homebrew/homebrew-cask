cask 'td-agent' do
  version '2.3.0'
  sha256 '4c80ea9c88ced5c44ae96fd5e2e41aa2d3c3e2fea3674a79eda1615c26187889'

  url "https://packages.treasuredata.com/2/macosx/td-agent-#{version}-0.dmg"
  name 'td-agent'
  homepage 'https://www.fluentd.org/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "tdagent-#{version}-0.pkg"

  uninstall :pkgutil   => 'test.treasuredatainc.pkg.tdagent2',
            :launchctl => 'td-agent'
end
