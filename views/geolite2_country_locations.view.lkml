view: geolite2_country_locations {
  sql_table_name: geo.geolite2_country_locations ;;

  dimension: continent_code {
    type: string
    sql: ${TABLE}.continent_code ;;
  }

  dimension: continent_name {
    type: string
    sql: ${TABLE}.continent_name ;;
  }

  dimension: country_iso_code {
    type: string
    sql: ${TABLE}.country_iso_code ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: geoname_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.geoname_id ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name, continent_name]
  }
}
