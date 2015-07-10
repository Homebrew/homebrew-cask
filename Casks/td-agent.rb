cask :v1 => 'td-agent' do
  version '2.1.4'
  sha256 '14ffe35c81622590b0fa65f7ce61b6db39a1035fe7c4b4a10eae77e2901845c7'

  url "http://packages.treasuredata.com/2/macosx/td-agent-#{version}-0.dmg"
  name 'td-agent'
  homepage 'https://www.fluentd.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "tdagent-#{version}-0.pkg"

  uninstall :pkgutil => 'test.treasuredatainc.pkg.tdagent2',
            :launchctl => 'td-agent'
end
