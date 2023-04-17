view: geolite2_country_blocks {
  sql_table_name: geo.geolite2_country_blocks ;;

  dimension: geoname_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.geoname_id ;;
  }

  dimension: is_anonymous_proxy {
    type: number
    sql: ${TABLE}.is_anonymous_proxy ;;
  }

  dimension: is_satellite_provider {
    type: number
    sql: ${TABLE}.is_satellite_provider ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: network_mask_length {
    type: number
    sql: ${TABLE}.network_mask_length ;;
  }

  dimension: network_start_ip {
    type: string
    sql: ${TABLE}.network_start_ip ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }
  dimension: location_lat_long_1 {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  dimension: registered_country_geoname_id {
    type: number
    sql: ${TABLE}.registered_country_geoname_id ;;
  }

  dimension: represented_country_geoname_id {
    type: number
    sql: ${TABLE}.represented_country_geoname_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
