class BdController < ApplicationController
  def backdoor
    render({ :template => "backdoor_templates/backdoor_page" })
  end

  def insert
    # Fetching the form inputs
    link_url_fetched = params.fetch("query_link_url")
    link_description_fetched = params.fetch("query_link_description")
    thumbnail_url_fetched = params.fetch("query_thumbnail_url")

    # Creating the database entry
    x = Item.new
    x.link_url = link_url_fetched
    x.link_description = link_description_fetched
    x.thumbnail_url = thumbnail_url_fetched
    x.save

    redirect_to("/")
  end


end
