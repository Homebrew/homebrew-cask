module Cask::Actions
  def install
    Cask::Installer.install(self)
  end

  def linkapps
    puts "looking in #{destination_path}/**/*.app"
    puts "found #{Pathname.glob("#{destination_path}/**/*.app").inspect}"
    Pathname.glob("#{destination_path}/**/*.app").each do |app|
      destination = Cask.appdir.join(app.basename)
      target = destination_path.join(app)
      if destination.symlink?
        puts "#{destination} exists but is symlink; removing and relinking"
        puts "#{destination} -> #{target}"
        destination.delete
        destination.make_symlink(target)
      elsif destination.directory? || destination.file?
        puts "#{destination} already exists and is not a symlink, not linking #{self}"
      else
        puts "#{destination} -> #{target}"
        destination.make_symlink(target)
      end
    end
  end
end
