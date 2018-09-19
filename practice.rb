# counter = 0
# loop do
#   counter += 1
#   puts "Hello world #{counter}!"
#   if counter >= 10
#     break
#   end
# end

# num_hotdogs = 0
# while num_hotdogs < 7
#   num_hotdogs += 1
#   puts "You have now eaten #{num_hotdogs} hot dog(s)."
# end
# puts "You ate a total of #{num_hotdogs} hot dogs!"

# counter = 0
# until counter == 20  
#   counter += 1
#   puts "The current number is #{counter}."
# end


# basket = ["apple 1","apple 2","apple 3","apple 4","apple 5","apple 6","apple 7","apple 8","apple 9","apple 10"]
 
# apples_in_basket = basket.size # Step 1
# apples_taken_out = 0 # Step 2
 
# loop do # Step 3
#     if apples_taken_out < apples_in_basket 
#         # Step 4
#         puts "Taking out #{basket[apples_taken_out]}"
#         apples_taken_out += 1
#     else
#         # Step 5
#         break
#     end
# end

#to output phrase using a while loop for each name:
# brothers = ["Tom", "Tim", "Jim"]
# count = 0 #1. establish a counter
# while count <= brothers.length-1 #2. set the condition
#   puts "Stop hitting yourself #{brothers[count]}!" #3. read data out of the array
#   count += 1 #4. increment the counter at the bottom of the loop
# end


# primary_colors = ["Red", "Yellow", "Blue"]
# primary_colors.each do |color|
#   puts "Primary Color #{color} is #{color.length} letters long."
# end

music_library = [
  ["Adele", #first level, artist_array; second level, artist_element
    ["19", #third level, album_element
      ["Day Dreamer", "Best for Last"] #fourth level, song_element
    ], 
    ["21", #third level, album_element
      ["Rolling in the Deep", "Rumor Has It"] #fourth level, song_element
    ]
  ], 
  ["Beyonce", #first level, artist_array; second level, artist_element
    ["4", #third level, album_element
      ["1 + 1", "Countdown"] #fourth level, song_element
    ], 
    ["Beyonce", #third level, album_element
      ["Haunted", "Pretty Hurts"] #fourth level, song_element
    ]
  ]
]

music_library.each do |artist_array|
  artist_array.each do |artist_element|
    if artist_element.class != Array
      puts "Artist: #{artist_element}"
    else
      artist_element.each do |album_element|
        if album_element.class != Array
          puts "Album: #{album_element}"
        else
          album_element.each do |song_element|
            puts "Song: #{song_element}"
          end
        end
      end
    end
  end
end
