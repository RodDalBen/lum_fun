## lum_fun

Last update: March, 2021.

Please, send suggestions and doubts to <dalbenwork@gmail.com>

**A set of three matlab functions are available:**

* a) `lum_calc` calculate the luminance mean and standard deviation of a set of pictures. The function uses the matlab Image Processing Toolbox to transform RGB pictures to HSV and CIE Lab color spaces. From the Value and Luminance channels, respectively, it calculates the luminance mean and standard deviation;

* b) `lum_mod` allows for normalizing or matching luminance for a set of images. From a set of images provided by the user, the function uses the matlab Image Processing Toolbox to transform RGB pictures to HSV and CIE Lab color spaces. From the Value and Luminance channels, respectively, it matches or normalize the luminace values for every pixel (all pixels will end up with matched or normalized values). When normalizing, the user provide a mean and standard deviation. When matching, the mean luminance or a manual luminance value can be used. After matching or normalizing luminance, the images are transformed back to RGB (which may produce some colors distortions). They are transformed again to HSV and CIE Lab and final mean luminance values and SDs are calculated for each image;

* c) `back_mod`, change all black or white pixels (especially background) to grey or light grey. This may enable better luminance modification and calculation using the functions “lum_mod” and “lum_calc”, respectively.

The functions can be called directly on MATLAB workspace by typing the function name (e.g., lum_mod). Then, a series of prompts will guide the user until the functions are applied. The matlab Image Processing Toolbox is required.

The functions were inspired from the SHINE toolbox (Willenbockel et al., 2010). For illustration/comparison purposes, the luminance values of the original NOUN images were calculated using the lum_calc function (Horst & Hout, 2016). Furthermore, the same images with normalized and matched luminance (lum_mod) are available on the files tab.

For all sets, picture's mean luminance and SD are provided.

Both tools can be freely downloaded, used, and modified for educational and research purposes. No warranty whatsoever is provided.

Please, send suggestions and corrections to <dalbenwork@gmail.com>

References

Dal Ben, R. (2019). SHINE color and Lum_fun: A set of tools to control luminance of colored images (Version 0.2). [Computer program]. doi: 10.17605/OSF.IO/AUZJY, retrieved from https://osf.io/auzjy/

The original SHINE toolbox is available at: http://www.mapageweb.umontreal.ca/gosselif/SHINE/

NOUN database available at: http://www.sussex.ac.uk/wordlab/noun

Willenbockel, V., Sadr, J., Fiset, D., Horne, G. O., Gosselin, F., & Tanaka, J. W. (2010). Controlling low-level image properties: The SHINE toolbox. Behavior Research Methods, 42(3), 671–684. http://doi.org/10.3758/BRM.42.3.671

Horst, J. S., & Hout, M. C. (2016). The Novel Object and Unusual Name (NOUN) Database: A collection of novel images for use in experimental research. Behavior Research Methods, 48(4), 1393–1409. http://doi.org/10.3758/s13428-015-0647-3
