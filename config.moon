import config from require "lapis.config"

config "development", ->
  postgres ->
    host "127.0.0.1"
    user "lapisteste"
    password "lapisteste"
    database "lapisteste"
