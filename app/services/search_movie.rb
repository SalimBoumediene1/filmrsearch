class SearchMovie
   
   
    def initialize
        Tmdb::Api.key(Rails.application.credentials[:api_key_tmdb])
    end
   
    def search(string)
      @search = Tmdb::Search.new
      @search.resource('movie') # determines type of resource
      @search.query(string) # the query to search against
      @search.fetch # makes request
   
    end

    def perform(name)
        search(name)
    end
end