#Check https://ga-dev-tools.appspot.com/query-explorer/ for help with building queries

#Sets an object containing the id for the GA View you want to access data from
master_view <- "ga:123456789"

# Create A List Of The Query Paramaters
query_list <- Init(start.date = "2015-04-01",
                   end.date = "2015-04-30",
                   dimensions = "ga:date",
                   metrics = "ga:sessions,ga:pageviews,ga:bounces",
                   max.results = 1000,
                   table.id = master_view)

#Create The Query Object
ga_query <- QueryBuilder(query_list)

#Send Query to GA API and retrieve in a DataFrame called ga_df.  Don't forget you need the oauth token.
ga_data <- GetReportData(ga_query, oauth_token)
