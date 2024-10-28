Rails.application.routes.draw do
  get("/square/new", {:controller => "zebra", :action => "square"})
  get("/square/results", {:controller => "zebra", :action => "square_results"})
end
