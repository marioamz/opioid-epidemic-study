library(ggplot2)
library(extrafont)

fonts()

set.seed(1234)
wdata = data.frame(
  sex = factor(rep(c("A", "B", "C", "D", "E", "F", "G", "H"), each=50)),
  weight = c(rnorm(400, 55), rnorm(400, 58)))


bg_color <- "#E8E9EB"
text_color <- "#444444"
grid_color <- "#FCFCFC"

jpalette <- c("#FC4445", "#5E2BFF", "#0B132B", "#F9DC5C", "#0F7173", "#55BCC9", "#56E39F", "#F18F01", "#4CB944", "#CAFAFE")
jfill <- scale_fill_manual(values=jpalette)
jcolor <- scale_color_manual(values=jpalette) 
jtheme <- theme_bw() + theme(
  text = element_text(family="Brandon Grotesque Light", color = text_color),
  
  # Plot 
  plot.background = element_rect(fill=bg_color),
  plot.title = element_text(family="Brandon Grotesque Black"),
  
  # Legend
  legend.text = element_text("Consolas"),
  legend.title = element_text("Brandon Grotesque Black"),
  legend.background = element_rect(fill=bg_color),
  legend.key = element_rect(fill=bg_color),
  
  
  # Axes
  axis.title = element_text("Brandon Grotesque Black"),
  axis.line =  element_line(colour=grid_color, size=1),
  axis.text = element_text(family="Consolas", colour=text_color),
  axis.text.x.bottom = element_text(margin=margin(10, 10, 10, 10)),
  axis.text.y.left = element_text(margin=margin(10, 10, 10, 10)),
  
  axis.line.x.bottom = element_blank(),
  axis.line.y.left = element_blank(),
  axis.ticks.x = element_line(colour=grid_color),
  axis.ticks.y = element_line(colour=grid_color),
  
  # Panels
  panel.background = element_rect(fill=bg_color),
  panel.border = element_blank(),
  panel.grid.major.x = element_line(colour=grid_color),
  panel.grid.major.y = element_line(colour=grid_color),
  panel.grid.minor.x = element_blank(),
  panel.grid.minor.y = element_blank()
)

jtheme_nogrid <- theme_bw() + theme(
  text = element_text(family="Brandon Grotesque Light", color = text_color),
  
  # Plot 
  plot.background = element_rect(fill=bg_color),
  plot.title = element_text(family="Brandon Grotesque Black"),
  
  # Legend
  legend.text = element_text("Consolas"),
  legend.title = element_text("Brandon Grotesque Black"),
  legend.background = element_rect(fill=bg_color),
  legend.key = element_rect(fill=bg_color),
  
  
  # Axes
  axis.title = element_text("Brandon Grotesque Black"),
  axis.line =  element_line(colour=grid_color, size=1),
  axis.text = element_text(family="Consolas", colour=text_color),
  axis.text.x.bottom = element_text(margin=margin(10, 10, 10, 10)),
  axis.text.y.left = element_text(margin=margin(10, 10, 10, 10)),
  
  axis.line.x.bottom = element_blank(),
  axis.line.y.left = element_blank(),
  axis.ticks.x = element_line(colour=grid_color),
  axis.ticks.y = element_line(colour=grid_color),
  
  # Panels
  panel.background = element_rect(fill=bg_color),
  panel.border = element_blank(),
  panel.grid.major.x = element_blank(),
  panel.grid.major.y = element_blank(),
  panel.grid.minor.x = element_blank(),
  panel.grid.minor.y = element_blank()
)



ggplot(wdata, aes(x = weight)) +
  labs(title="STUDY SHOWS CHARTS ARE COOL",
       subtitle="THIS FROM ALL STUDIES EVER",
       x="WEIGHT",
       y="COUNT",
       caption="SOURCE: COMMON SENSE") + 
  geom_area(aes(fill = sex), stat ="bin", alpha=0.7) +
  guides(fill=guide_legend(title="COLOR")) +
  jtheme + jfill

# Alternative Schemes:
#scale_fill_manual(values=c("#41B3A3", "#E27D60", "#C38D9E", "#E8A87C", "#85DCBB"))
#scale_fill_manual(values=c("#FC4445", "#3FEEE6", "#97CAEF", "#55BCC9", "#CAFAFE"))
#scale_fill_manual(values=c("#FC4445", "#DCF2B0", "#0B132B", "#55BCC9", "#CAFAFE"))