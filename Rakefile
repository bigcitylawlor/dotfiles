# Rakefile for setup/reinstallaton of dotfiles
# 
# Pretty much stolen from Ryan Bates' dotfiles (http://github.com/ryanb/dotfiles)

require 'rake'
require 'erb'

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README LICENSE].include? file
    
    if File.exist?(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"))
      if replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file.sub('.erb', '')}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file.sub('.erb', '')}"
        end
      end
    else
      link_file(file)
    end
  end
  
  puts ''
  puts ''
  puts "Dotfiles are now setup. You'll want to close any shell windows you had"
  puts "open for the changes to take effect."
  puts ''
  puts "If you have any system-specific settings that you wanted to enable (say, "
  puts "something that only works on your Mac and not your Linux machines), simply"
  puts "edit ~/.localrc"
  puts ''
  puts "Enjoy!"
  puts ''
end

desc "update dotfiles from the origin git repo (if available)"
task :update do
  if File.exist?(File.join(ENV['PWD'], ".git"))
    puts 'Dotfiles have git info. Attempting to update via git...'
    puts ''
    
    if !system %Q{git pull origin master}
      puts ''
      puts "Couldn't update dotfiles; see output of git above to determine the cause."
    end
  else
    puts "Dotfiles are not a git repository; they cannot be updated."
  end
  
  puts ''
end

def replace_file(file)
  system %Q{rm "$HOME/.#{file.sub('.erb', '')}"}
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub('.erb', '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end
