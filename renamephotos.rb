# Edit Chris Pine's code to work on my computer.
# Move photos from one directory to another
# directory and rename the photos in the process.

# Go to the appropriate directory
Dir.chdir '/home/teddi/Desktop/PictureInbox'

#find all pictures to be moved
pic_names = Dir['/home/teddi/Desktop/NewPhotos/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

# This will be our counter. We will start at 1 today.

pic_number = 1

pic_names.each do |name|
  print '.' # this is our progress bar.

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist? (new_name)
    puts " This file: #{name} already exists!"


  # This renames the picture, but since "name"
  # has a big long path on it, and "new_name"
  # doesn't, it also moves the file to the
  # current working directory,pic_number = pic_number + 1 which is now
  # the inbox folder.
  # Since it's a move, this effectively
  # downloads and deletes the originals.
  # And since this is a memory card, not a
  # hard drive, each of these takes a second
  # or so; hence, the little dots lets her
  # know that my program didn't hose her machine.
  else
  File.rename name, new_name
  end
  # Finally we increment the counter.
  pic_number = pic_number + 1
end

puts # This is so we aren't on the progress bar line.
puts 'Done, cutie!'
