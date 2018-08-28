library(imager)
library(magick)

#DISPLAY IMAGE 
starrynight <- load.image("C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/starrynight.jpg") %>% plot

HubbleDeepField <- load.image("C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/HubbleDeepField.jpg") %>% plot

telescope <- load.image("C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/telescope.jpg") %>% plot

#RESIZE IMAGE

resizeimg <- function(img,height,width){
  imgrsze <- resize(img, size_x = height, size_y = width)
  save.image(im = imgrsze,"C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/starrynightresize.jpg")
  plot(imgrsze)
}

resizeimg(starrynight,600,500)

#GRAYSCALE IMAGE

grayimg <- function(img,x){
  is.logical(x)
  if(x==TRUE){
    gray <- grayscale(img)
    gray1 <- save.image(gray,"C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/starrynight.jpg")
    plot(gray)
  } else{
    plot(img)
  }
}

grayimg(starrynight,TRUE)
grayimg(starrynight,FALSE)


#INVERTION IMAGE
invertimg <- function(im,angle){
  invimg <- imrotate(im,angle)
  invimg1 <- save.image(invimg,"C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/telescope.jpg")
  plot(invimg)
}
invertimg(telescope,180)



