# Exercise: Find the top 10 largest files

# Using the Dir.glob and File.size methods, write a script that targets a directory – and all of its subdirectories 
# – and prints out the names of the 10 files that take up the most disk space. 

directory = "data-hold"
Dir.glob('#{directory}/**/*.*').sort_by { |fname| File.size(fname) }.reverse[0..9].each do |fname|
  puts "#{fname}\t#{File.size(fname)}"
 end

# Exercise: Determine file makeup of directories, print to spreadsheet

# Read the same directory and subdirectories as in the last exercise and determine:

#    A breakdown of file types (normalize the file extensions) by number of files
#    A breakdown of file types by bytes of disk space used.

# Print the results of this analysis in a single text file, in the following spreadsheet-friendly 
# tab-delimited format:

hash = Dir.glob("#{DIRNAME}/**/*.*").inject({}) do |hsh, fname|
   ext = File.basename(fname).split('.')[-1].to_s.downcase
   hsh[ext] ||= [0,0]
   hsh[ext][0] += 1
   hsh[ext][1] += File.size(fname)   
   hsh
end
               
File.open("file-analysis.txt", "w") do |f|
   hash.each do |arr|
     txt = arr.flatten.join("\t")
      f.puts txt
      puts txt
   end
end


# Exercise: Read a text file and create a Google Chart

# Reading from the text files generated in the last exercise, 
# use the Google Image Chart API (note that this is different from their Javascript-based Chart API) 
# to draw piecharts based on the data and save those images somewhere on your hard drive.

require 'open-uri'

BASE_URL = "https://chart.googleapis.com/chart?cht=p&chs=500x300"
rows = File.open("file-analysis.txt"){|f| f.readlines.map{|p| p.strip.split("\t")} }

headers = rows[0]
[1,2].each do |idx|
   labels = []
   values = []
   rows[1..-1].each do |row|
      labels << row[0]
      values << row[idx]
   end
   
  remote_google_img = URI.encode"#{BASE_URL}&chl=#{labels.join('|')}&chd=t:#{values.join(',')}"
  puts remote_google_img
  
  File.open('file-pie-chart.png', 'w'){|f| 
    f.write(open(remote_google_img))
  }

end