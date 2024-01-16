class ApplicationController < ActionController::Base
    include Pagy::Backend
    before_action :set_tags

    def set_tags
        set_meta_tags(
            short_name: "Interstartas",
            start_url: root_url,
            title: "Interstartas",
            description: "Interstartas description",
            keywords: 'Interstartas Keywords',
            og: {
                title: "Interstartas",
                description: "Interstartas description",
                type: 'website',
                url: root_url,
                site_name: 'Interstartas'
            },
            twitter: {
                card: 'summary',
                site: '@interstartas',
                title: "Interstartas",
                description: "Interstartas description",
            }
        )
    end
end
