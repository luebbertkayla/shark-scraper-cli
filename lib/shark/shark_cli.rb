class Shark::CLI

    def call 
        puts ""
        puts "Welcome to Oceana's Sharks and Rays Encyclopedia!"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        Shark::Scraper.new.make_sharks
        start
    end 

    def start 
        puts ""
        puts "Which shark or ray would you like to learn more about?"
        list_sharks
        puts ""
        puts "Type 'exit' if you wish to exit the program, otherwise please select a number."

        input = gets.strip

        if input == 'exit'
            return
        end

        if valid_number?(input, Shark::SharkRays.all) == false
            puts ""
            puts "The sharks don't understand that answer, please input a valid number."
            start
        else
            shark = Shark::SharkRays.find(input.to_i)

            print_shark(shark)
    
            puts ""
            puts "Would you like to learn about another shark or ray? Enter Y or N."
    
            input = gets.strip.downcase
            if input == "y"
                start
              elsif input == "n"
                puts ""
                puts "Thank you! Come back soon to learn more!"
                exit
              else
                puts ""
                puts "The sharks don't understand that answer."
                start
            end 
        end
    end

    def print_shark(shark)
        puts ""
        puts "~~~~~~~~~~~ #{shark.name} Facts ~~~~~~~~~~~"
        puts ""
        puts "Scientific Name: #{shark.scientific_name}"
        puts "Distribution: #{shark.distribution}"
        puts "Habitat: #{shark.habitat}"
        puts "Feeding: #{shark.feeding}"
        puts "Taxonomy: #{shark.taxonomy}"
    
        puts ""
        puts "~~~~~~~~~~~ Description ~~~~~~~~~~~"
        puts ""
        puts "#{shark.description}"
        puts ""
    end 

    def list_sharks
        Shark::SharkRays.all.each.with_index(1) do |shark, index|
            puts "#{index}. #{shark.name}"
        end
    end

    def valid_number?(input, data)
        input.to_i <= data.length && input.to_i > 0 
    end 
end 