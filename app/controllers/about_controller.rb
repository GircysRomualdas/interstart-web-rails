class AboutController < ApplicationController 
    def index 
        set_meta_tags(
            title: "About",
            description: "About Page Description",
            keywords: 'About Page Keywords'
        )
    end
end