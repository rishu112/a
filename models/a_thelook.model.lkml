connection: "thelook"

# include all the views
include: "/views/**/*.view"

datagroup: a_thelook_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: a_thelook_default_datagroup

explore: counties {

}

explore: geolite2_country_blocks {}

explore: geolite2_country_locations {}

explore: geolite_city_location {}

explore: zipcode_to_county {}
