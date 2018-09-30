Rails.application.routes.draw do
  get 'pages/home'

  root 'application#hello'
end
