Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", { :controller => "bd", :action => "backdoor" }) # backdoor page

  post("/insert_item", { :controller => "bd", :action => "insert" }) # insert item POST route


end
