library(httr)
library(tidyjson)

# I'd like to know the current travel time between Miramar and Hataitai

# Set the API endpoint and parameters
endpoint <- "https://maps.googleapis.com/maps/api/distancematrix/json"
origin <- "Miramar, Wellington, New Zealand"
destination <- "Hataitai, Wellington, New Zealand"
mode <- "driving"
key <- "AIzaSyDv9ShO6Cnak2KAOkJ_SX8Zduo-SgShDw8"

# Send the API request
response <- GET(endpoint, query = list(
  origins = origin,
  destinations = destination,
  mode = mode,
  key = key
))

# Parse the API response
json_response <- content(response, "text", encoding = "UTF-8")
data <- jsonlite::fromJSON(json_response)

# Extract the travel time
travel_time <- data$rows$elements$duration$text

# save it somewhere




# Now I'd like to know the current travel time between Hataitai and Miramar

# Set the API endpoint and parameters
endpoint <- "https://maps.googleapis.com/maps/api/distancematrix/json"
origin <- "Hataitai, Wellington, New Zealand"
destination <- "Miramar, Wellington, New Zealand"
mode <- "driving"
key <- "AIzaSyDv9ShO6Cnak2KAOkJ_SX8Zduo-SgShDw8"

# Send the API request
response <- GET(endpoint, query = list(
  origins = origin,
  destinations = destination,
  mode = mode,
  key = key
))

# Parse the API response
json_response <- content(response, "text", encoding = "UTF-8")
data <- jsonlite::fromJSON(json_response)

# Extract the travel time
travel_time <- data$rows$elements$duration$text

# save it somewhere

rm(list = ls())


