
### A function for my exploratary plot
exploratory_plot <- function(data,
                             species_colours) {
  ggplot(mass_and_culmenlength, 
         aes(x=body_mass_g, 
             y=culmen_length_mm, 
             shape=species, 
             color=species)) +
    scale_color_manual(
      values = species_colours) +
    labs(title = "Body Mass vs Culmen Length", x = "Body Mass (g)", y = "Culmen Length (mm)") +
    theme_bw() +
    geom_point()
}

### A function for my results plot
results_plot <- function(data, species_colours, custom_labels){
  ggplot(mass_and_culmenlength, 
         aes(x=body_mass_g, 
             y=culmen_length_mm, 
             color=species)) +
    scale_color_manual(
      values = species_colours) +
    labs(title = "Body Mass vs Culmen Size, linear regression", x = "Body Mass (g)", y = "Culmen Length (mm)") +
    theme_bw() +
    geom_point(aes(shape=species)) +
    geom_smooth(method = lm, se = TRUE, alpha = 0.4) +
    scale_color_manual(values = c(species_colours),
                       labels = custom_labels) +
    guides(color = guide_legend(title = "Correlation",override.aes = list(fill = NA, colour = NA)))
}



