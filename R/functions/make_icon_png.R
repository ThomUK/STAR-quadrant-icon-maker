make_icon_png <- function(string = "WWWW", preview = FALSE){
  
  if(preview) {
    
    #output to the screen device
    draw_star_icon(string)
    
  } else {
    
    # initiate writing to PNG file
    png(filename = paste0("output/star_",string,".png"), width = 150, height = 150, units = "px", type = "cairo")
    
    # draw the icon
    draw_star_icon(string)
    
    # stop writing to the file
    dev.off()
  }
  
}
