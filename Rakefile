require 'fileutils'

task :default => 'symlinks:update'

namespace :symlinks do
  task :update => [:clean, :create]

  task :create do
    # Symlink each dotfile to $HOME
    dotfiles.each do |dotfile|
      ln_s File.expand_path(dotfile), "#{ENV['HOME']}/#{File.basename dotfile}"
    end
  end

  task :clean do
    # Remove all dotfiles in $HOME that also exist here
    dotfiles.each do |dotfile|
      if File.exists? "#{ENV['HOME']}/#{File.basename dotfile}"
        rm "#{ENV['HOME']}/#{File.basename dotfile}", force: true
      end
    end
  end
end

def dotfiles
  Dir.glob('**/.*').select { |object| File.file?(object) }
end
