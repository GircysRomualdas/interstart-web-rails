class HomeController < ApplicationController 
    def index 
        set_meta_tags(
            title: "Home",
            description: "Home Page Description",
            keywords: 'Home Page Keywords'
        )
    end
end