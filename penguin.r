install.packages("tidyverse")
install.packages("palmerpenguins")
library(palmerpenguins)
library(tidyverse)
penguins %>%
  count(species)
head(penguins)

ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color= species, shape= species,))+
  labs(title="Palmer Penguines: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguine Species",
       caption="Data collected b Dr. Kristen Gorman")+
  annotate("text", x=212, y=3600, label="The Gentoos are the largest", color="purple", 
           fontface="bold", size=3.0, angle=25)

