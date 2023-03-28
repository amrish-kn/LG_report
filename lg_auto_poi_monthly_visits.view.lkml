view: lg_auto_poi_monthly_visits {
  derived_table: {
    sql: select * from aditya.lg_auto_poi_monthly_visits
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: poi_hash {
    type: string
    sql: ${TABLE}.poi_hash ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: monthly_visits {
    type: number
    sql: ${TABLE}.monthly_visits ;;
  }

  dimension: monthly_visitors {
    type: number
    sql: ${TABLE}.monthly_visitors ;;
  }

  dimension: location_group {
    type: string
    sql: ${TABLE}.location_group ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  set: detail {
    fields: [
      poi_hash,
      year,
      month,
      monthly_visits,
      monthly_visitors,
      location_group,
      id
    ]
  }
}
