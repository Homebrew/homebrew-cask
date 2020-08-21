ARGV.shift

raise 'A cask-token or App Name argument is required' if ARGV.empty?

def bundle_id_from(app)
  stdout = `/usr/bin/osascript -e 'id of app "#{File.basename app}"'` ||
           `/usr/bin/mdls -raw -name kMDItemCFBundleIdentifier "#{app}"`
  stdout.chomp
end

case ARGV.join ' '
when %r{^[a-z0-9][a-z0-9/-]+$}
  begin
    cask = Cask::CaskLoader.load ARGV.first
    cask.artifacts.find do |artifact|
      directives = :launchctl, :quit, :signal, :delete, :trash, :rmdir
      directives = artifact.directives.values_at(*directives).flatten.compact

      bundle_ids = directives.grep(%r{\w+\.\w+\.\w+}) { $& }

      break puts bundle_ids unless bundle_ids.empty?

      app = directives.find { %r{\.app$} }
      break puts(*bundle_id_from(app)) if app
    end
  end
when %r{/.+\.app}
  puts bundle_id_from ARGV.join(' ').split(%r{\b}).map(&:capitalize).join
else
  basename = File.basename ARGV.join('*'), '.app'
  pattern = "{,#{Dir.home}}/Applications/{*/,}*#{basename}*.app"
  puts Dir.glob(pattern, File::FNM_CASEFOLD).map(&method(:bundle_id_from))
end
