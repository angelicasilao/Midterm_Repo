install.packages('magick')

devtools::install_github('ropensci/magick')
library(magick)

str(magick::magick_config())
library(magick)

littleprince <- image_read_jpg('https://ctl.s6img.com/society6/img/YquT87yZsAO4ZXFZ00X7tuq6S_A/h_264,w_264/wall-murals/8x8/lifestyle/~artwork/s6-original-art-uploads/society6/uploads/misc/7c83b4d1558e49a68ab301b58ab9ce43/~~/little-prince128908-wall-murals.jpg')
print('littleprince')


#INSTALLING IMAGER
install.packages("imager")

#DISPLAYING THE IMAGE
library(imager)
file<- system.file('extdata/night.jpg', package='imager')
image <- load.image(file)
plot(image)


#RESIZING THE IMAGE
library(imager)
file<- system.file('extdata/night.jpg', package='imager')
image <- load.image(file)
thmb <- resize(image,round(width(image)-100), round(height(image)-100))
plot(image)
plot(thmb,main = 'Resized')

#DISPLAYING IMAGE FROM WEB
install.packages('magick')
library(magick)
tiger<- image_read('https://assets.saatchiart.com/saatchi/880622/art/3156956/2226847-HDORIDWH-7.jpg')
print(tiger)
