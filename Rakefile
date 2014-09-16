require 'fileutils'

namespace :symlinks do
  task :create do
    # Symlink each dotfile to $HOME
    dotfiles.each do |dotfile|
      puts "Creating a symbolic link at ~/#{File.basename(dotfile)} to #{dotfile}"
      FileUtils.ln_s(File.expand_path(dotfile), File.expand_path("~/#{File.basename(dotfile)}"))
    end
  end

  task :clean do
    # Remove all symlinked dotfiles in $HOME
    dotfiles.each do |dotfile|
      puts "Removing ~/#{File.basename(dotfile)}"
      FileUtils.rm(File.expand_path("~/#{File.basename(dotfile)}"))
    end
  end

  task :update => [:clean, :create]
end

def dotfiles
  Dir.glob('**/.*').select { |object| File.file?(object) }
end
