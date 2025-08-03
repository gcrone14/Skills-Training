#' ---
#' title: "Practicing RMarkdown with Github"
#' author: "Gabriel Crone"
#' date: "`r Sys.Date()`"
#' output: github_document
#' ---

#' This is a document practicing uploading changes from RMarkdown to Github. Please enjoy the plot below.

library(tidyverse)

# Face
face <- data.frame(x = 0, y = 0)

# Eyes (already lowered)
eyes <- data.frame(
  x = c(-0.4, 0.4),
  y = c(0.2, 0.2)
)

# Smile
theta <- seq(pi/4, 3*pi/4, length.out = 100)
smile <- data.frame(
  x = 0.6 * cos(theta),
  y = -0.4 * sin(theta) - 0.3
)

# Eyebrows (little lines above each eye)
eyebrows <- data.frame(
  x = c(-0.5, 0.3),
  xend = c(-0.3, 0.5),
  y = c(0.35, 0.35),
  yend = c(0.4, 0.4)
)

ggplot() +
  # Face
  geom_point(data = face, aes(x = x, y = y), size = 20, shape = 21, fill = "yellow", color = "black") +
  # Eyes
  geom_point(data = eyes, aes(x = x, y = y), size = 8) +
  # Smile
  geom_path(data = smile, aes(x = x, y = y), size = 2) +
  # Eyebrows
  geom_segment(data = eyebrows, aes(x = x, xend = xend, y = y, yend = yend), size = 2) +
  coord_fixed() +
  theme_void()

