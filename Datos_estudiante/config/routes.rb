Rails.application.routes.draw do
  # Otras rutas...

  root 'estudiantes#new'  # Cambia 'estudiantes#new' por el controlador y acción deseada

  resources :estudiantes
end
