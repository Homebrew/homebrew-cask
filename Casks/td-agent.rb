cask :v1 => 'td-agent' do
  version '2.0.3'
  sha256 '7e730682879dc199cc712205f22ba93fb9bee20a5dad16b113c8f32d11109cb8'

  url "http://packages.treasuredata.com/2/macosx/td-agent-#{version}-0.dmg"
  homepage 'http://www.fluentd.org/'
  license :unknown

  pkg 'td-agent2.pkg'

  uninstall :pkgutil => 'test.treasuredatainc.pkg.tdagent2',
            :launchctl => 'td-agent'
end
