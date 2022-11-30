cleaning <- function(data_raw){
  data_raw %>%
    clean_names() %>%
    select(-starts_with("delta")) %>%
    select(-comments)
}

remove_empty <- function(data_clean){
  data_clean %>%
    filter(!is.na(flipper_length_mm)) %>%
  filter(!is.na(body_mass_g))
}
