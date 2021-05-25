class Shark::SharkRays
    attr_accessor :name, :url, :scientific_name, :distribution, :habitat, :feeding, :taxonomy, :description

    @@all = [] 

    def self.new_from_shark_index(shark)
        self.new(
            shark.css("h1").text,
            shark.css("a").attr("href").value
        )
    end

    def initialize(name = nil, url = nil)
        @name = name 
        @url = "https://oceana.org" +url 
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def self.find(id)
        self.all[id-1]
    end

    def doc 
        @doc = Nokogiri::HTML(open(self.url))
    end 

    def scientific_name
        @scientific_name = doc.css("div.subpage-header-inner").css("p").text.strip
    end 

    def distribution
        @distribution = doc.css("div.animal-details-side").css("p")[0].text.strip
    end 

    def habitat
        @habitat = doc.css("div.animal-details-side").css("p")[1].text.strip
    end 

    def feeding
        @feeding = doc.css("div.animal-details-side").css("p")[2].text.strip
    end 

    def taxonomy 
        @taxonomy = doc.css("div.animal-details-side").css("p")[3].text.strip
    end 

    def description 
        @description = doc.css("div.animal-description-contain").css("p").text.strip
    end 
end 