# PhotoGalleryStore

This app is a digital photo gallery store. A user will enter with their login credentials and be shown their 
personal photo gallery from their photoshoot.

They can then add the images they would like to purchase to the cart. They would be purchasing the full digital rights to the image. 
The images that were purchased would be sent to their email after completion of purchase.

## What Hasn't Been Implemented Yet?
- An image carousel view was to be added that would allow the customer to click on an image and view it in fullscreen. They could then scroll 
through their images in the full screen view and add them to cart.
- The function to send the image that was purchased to the user email after they complete their purchase, has not been implemented.

*The Apple Pay function was implemented as a test. In the future, the image will be sent by email when payment is approved.*

## Instructions
1. Clone the repository and save to computer. 
2. Start XCode and click on the open button. 
3. Choose the repo that was cloned but enter through the second folder titled "PhotoGalleryStore2". (If you try to open it from the
    the first folder you saved it from, XCode will not recognize the project) 
    *I couldn't figure out how to delete the extra folder inside a folder.*
4. Let the project load the firebase files. 
5. Start the app on the simulator.
6. User credentials are "Noneil@email.com", "password".


## What can the app currently do?
1. User can sign in and be taken to their personal gallery.
2. User can scroll through images.
3. User can add images to cart and see the cart, in the top right corner, be updated.
4. User can click on cart button to enter their cart.
5. User can view the items they added to their cart along with their total.
6. User can delete items from their cart and see an updated cart total.
7. User can click the ApplePay button and see a test form of the payment method.
8. Cart will be cleared out after payment button form is closed, mimicking a purchase.
