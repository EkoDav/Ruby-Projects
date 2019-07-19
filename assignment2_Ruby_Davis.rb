#Ruby Programming Assignment 2 - Erik Davis CS390

#Insert user chosen text file and search phrase here
fileLocation = 'C:/Users/Erik/Desktop/test_text_1.txt'
searchString = 'computer'

#Code to fill a new array of size 16 with random numbers from 10 to 99. 
ranNumbers = []
i = 0
loop do
    ranNumbers[i] = rand(10..99)
    i += 1
    break if i == 16
end

#Code to accomplish first task - printing numbers of an array in groups of 4 using ".each" construct.
print "\nPrinting numbers of the array using just the \"each\" construct: \n"
k = 0
loop do 
    ranNumbers[k..k + 3].each {|a| print a, " "}
    print "\n"
    k += 4
    break if k == 16
end

#Code to accomplish second task - printing numbers of an array in groups of 4 using "each_slice".
print "\nPrinting numbers of the array using \"each_slice\": \n"
ranNumbers.each_slice(4) {|a| print a, "\n"}

##Code to accomplish third task - reading lines from text file and using ".grep" to  print all lines
# containing a specific phrase. 
print "\nPrinting the lines of the text file containing the phrase \"#{searchString}\":\n\n"
file = File.open(fileLocation, "r")
lineArray = []
j = 0
file.each_line do |line|
    lineArray[j] = line
    j += 1
end
matchArray = lineArray.grep(/#{searchString}/) 
if matchArray.any? 
    matchArray.each {|x| print x}
else 
    puts "Sorry - There are no lines containing the phrase \"#{searchString}\""
end