cask :v1 => 'td-agent' do
  version '2.1.1'
  sha256 '388f418e9bd7a2314335eb37bc62b5c2cc1b61fdf1f1d29f74a99dc020f486bb'

  url "http://packages.treasuredata.com/2/macosx/td-agent-#{version}-0.dmg"
  homepage 'http://www.fluentd.org/'
  license :unknown    # todo: improve this machine-generated value

  pkg "tdagent-#{version}-0.pkg"

  uninstall :pkgutil => 'test.treasuredatainc.pkg.tdagent2',
            :launchctl => 'td-agent'
end
