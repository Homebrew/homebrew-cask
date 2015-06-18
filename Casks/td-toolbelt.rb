cask :v1 => 'td-toolbelt' do
  version :latest
  sha256 :no_check

  url 'http://toolbelt.treasuredata.com/mac'
  name 'Treasure Data Toolbelt'
  homepage 'http://toolbelt.treasuredata.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :type => :naked
  preflight do
    system '/bin/mv', '--', "#{staged_path}/mac", "#{staged_path}/td-toolbelt.pkg"
  end

  pkg 'td-toolbelt.pkg'

  uninstall :pkgutil => 'com.td.toolbelt'
  zap :pkgutil => 'org.ruby-lang.installer'
end
