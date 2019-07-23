library(leaflet)
base.url <-"http://emapr.ceoas.oregonstate.edu/pages/data/vis/tms/conus"

leaflet()%>%
  setView(lng = -98.0589, lat = 38.3601, zoom = 4)%>%
  addProviderTiles(providers$Stamen.Toner) %>%
  addTiles(urlTemplate = paste0("/tiles/{z}/{x}/{-y}.png"), 
           options =tileOptions(tms=T, opacity = 0.95) )
