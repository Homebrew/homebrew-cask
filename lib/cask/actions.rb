module Cask::Actions
  def install
    Cask::Installer.install(self)
  end

  def linkapps
    destination_path.entries.select { |f| f.basename.to_s =~ /.app$/ }.each do |app|
      symlink_destination = HOME_APPS.join(app.basename)
      symlink_target = destination_path.join(app)
      if symlink_destination.symlink?
        puts "#{symlink_destination} exists but is symlink; removing and relinking"
        puts "#{symlink_destination} -> #{symlink_target}"
        symlink_destination.delete
        symlink_destination.make_symlink(symlink_target)
      elsif symlink_destination.directory? || symlink_destination.file?
        puts "#{symlink_destination} already exists and is not a symlink, not linking #{self}"
      else
        puts "#{symlink_destination} -> #{symlink_target}"
        symlink_destination.make_symlink(symlink_target)
      end
    end
  end
end
