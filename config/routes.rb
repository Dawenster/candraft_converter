Rails.application.routes.draw do
  root "pages#main"

  post "import_dictionary" => "dictionaries#import", as: :import_dictionary
end
