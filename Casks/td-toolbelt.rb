cask :v1 => 'td-toolbelt' do
  version :latest
  sha256 :no_check

  url 'http://toolbelt.treasuredata.com/mac'
  homepage 'http://toolbelt.treasuredata.com/'
  license :unknown    # todo: improve this machine-generated value

  container :type => :naked
  preflight do
    system '/bin/mv', '--', "#{staged_path}/mac", "#{staged_path}/td-toolbelt.pkg"
  end

  pkg 'td-toolbelt.pkg'

  uninstall :pkgutil => 'com.td.toolbelt'
  # zap :pkgutil => 'org.ruby-lang.installer'
end
