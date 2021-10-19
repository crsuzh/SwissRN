# Swiss map for SwissRN presentations

# install.packages("ggswissmaps")
library(ggswissmaps)

# Intro to package
# Contains different maps as ggplot objects
vignette("ggswissmaps_intro", package = "ggswissmaps")

# Load data
data("shp_df")



# Map Switzerland with cantons (ggplot object)
# Local Nodes added as dots via coordinates (aes(x=long, y=lat))
maps2[[5]] +
  # Zürich
  geom_point(aes(x=683354, y=247353), colour="#dd1572") +
  # Lausanne
  geom_point(aes(x=538291, y=152330), colour="#dd1572") +
  # Basel
  geom_point(aes(x=611220, y=267503), colour="#dd1572") +
  # Bern
  geom_point(aes(x=600670, y=199655), colour="#dd1572") +
  # Fribourg
  geom_point(aes(x=578929, y=183935), colour="#dd1572") +
  # Genf
  geom_point(aes(x=500532, y=117325), colour="#dd1572") +
  # Neuchâtel
  geom_point(aes(x=561256, y=204454), colour="#dd1572") +
  # Lugano
  geom_point(aes(x=717505, y=96295), colour="#dd1572") +
  # St. Gallen
  geom_point(aes(x=746284, y=254335), colour="#dd1572") +
  # Winterthur
  geom_point(aes(x=697052, y=261734), colour="#dd1572")


