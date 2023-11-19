# In config/initializers/swagger_docs.rb

require 'swagger/docs'

Swagger::Docs::Config.register_apis({
  '1.0' => {
    # the extension used for the API
    api_extension_type: :json,

    api_file_path: 'public/swagger',

    base_path: 'https://motorhubbackend-production.up.railway.app/',

    clean_directory: true,

    attributes: {
      info: {
        'title' => 'Motor hub api documentation',
        'description' => 'Please use this api documentation to create motor hub app',
        'contact' => 'binodreal@gmail.com'
      }
    }
  }
})
