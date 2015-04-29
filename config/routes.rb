Rails.application.routes.draw do
  root "pages#main"

  post "import_dictionary" => "dictionaries#import", as: :import_dictionary
  post "import_text" => "texts#import", as: :import_text
end
