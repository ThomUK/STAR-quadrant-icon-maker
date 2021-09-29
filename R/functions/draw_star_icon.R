draw_star_icon <- function(colour_string){
  
  quadrant <- function(x, y, colour){
    rectGrob(x = x, y = y, width = 0.5, height = 0.5,
             gp = gpar(fill = colour, lwd = 0)
    )
  }
  black_line <- function(x, y, width, height){
    rectGrob(x = x, y = y, width = width, height = height,
             gp = gpar(fill = "black")
    )
  }
  black_circle <- function(radius, line_width){
    circleGrob(x = 0.5, y = 0.5, r = radius,
               gp = gpar(fill = "transparent", lwd = line_width)
    )
  }
  white_circle <- function(radius, line_width){
    circleGrob(x = 0.5, y = 0.5, r = radius,
               gp = gpar(col = "white", fill = "transparent", lwd = line_width)
    )
  }
  text_label <- function(label, x, y) {
    textGrob(label, x = x, y = y, 
             gp = gpar(fontsize = 25, fontface = "bold")
    )
  }
  
  # parse the colour string
  S_letter <- substr(colour_string, 1, 1)
  T_letter <- substr(colour_string, 2, 2)
  A_letter <- substr(colour_string, 3, 3)
  R_letter <- substr(colour_string, 4, 4)
  
  # assign the R colour
  find_colour <- function(letter){
    case_when(
      letter == "R" ~ "red",
      letter == "A" ~ "orange",
      letter == "G" ~ "green",
      letter == "W" ~ "white",
    )
  }
  
  # set the quadrant colours
  S_quadrant <- quadrant(x = 0.25, y = 0.75, colour = find_colour(S_letter))
  T_quadrant <- quadrant(x = 0.75, y = 0.75, colour = find_colour(T_letter))
  A_quadrant <- quadrant(x = 0.25, y = 0.25, colour = find_colour(A_letter))
  R_quadrant <- quadrant(x = 0.75, y = 0.25, colour = find_colour(R_letter))
  
  # draw everything
  grid.draw(S_quadrant)
  grid.draw(T_quadrant)
  grid.draw(A_quadrant)
  grid.draw(R_quadrant)
  grid.draw(white_circle(radius = 0.56, line_width = 60))
  grid.draw(black_circle(radius = 0.42, line_width = 8))
  grid.draw(black_line(x = 0.5, y = 0.5, width = 0.95, height = 0.04))
  grid.draw(black_line(x = 0.5, y = 0.5, width = 0.04, height = 0.95))
  grid.draw(text_label("S", 0.32, 0.68))
  grid.draw(text_label("T", 0.68, 0.68))
  grid.draw(text_label("A", 0.32, 0.32))
  grid.draw(text_label("R", 0.68, 0.32))
  
}
