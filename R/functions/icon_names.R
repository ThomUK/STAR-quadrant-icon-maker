icon_names <- function(){
  
  # define letters representing the possible colours (red, amber, green)
  colours <- c("R", "A", "G")
  
  # find all the possible permutations for the 3 colours & 4 quadrants
  icon_name_permutations <- permutations(3,4,colours, repeats.allowed = TRUE)

  # collapse the matrix into a character vector  
  names_vector <- NULL
  for(i in 1:nrow(icon_name_permutations)){
    names_vector[i] <- str_flatten(icon_name_permutations[i,])  
  }
  
  return(names_vector)
  
}