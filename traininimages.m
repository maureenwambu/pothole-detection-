%%Select XML file for detection
Potholedetector = vision.CascadeObjectDetector('C:\Users\MAUREEN DIVA\Documents\year 5\matlab\potholedetector_3_75.xml'); 

 
%%Load input 
I=road20
imshow(road20)

  
%%Finding bounding box
bbox=step(Potholedetector, I)
    
 %%Mark the location on the image using bounding box
 %    % Insert bounding box rectangles and return marked image

J = insertObjectAnnotation(I, 'rectangle',bbox(1,:),'POTHOLE');
    imshow(J)
%%Clean up
  
release(Potholedetector)