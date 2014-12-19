cask :v1 => 'teampostgresql' do
  version :latest
  sha256 :no_check

  url 'http://cdn.webworks.dk/download/teampostgresql_multiplatform.zip'
  name 'TeamPostgreSQL'
  homepage 'http://www.teampostgresql.com/'
  license :gratis

  preflight do
    File.open(staged_path.join('teampostgresql.sh'), "w") do |f|
      f.write <<-EOS.undent
        #!/bin/sh
        cd "#{staged_path.join('teampostgresql')}"
        ./teampostgresql-run.sh
      EOS
    end
  end

  binary 'teampostgresql.sh', :target => 'teampostgresql'

  postflight do
    system '/bin/chmod', '--', 'a+x', "#{staged_path}/teampostgresql.sh"
  end

  zap :delete => '~/teampostgresql_rev_20130612'
end
