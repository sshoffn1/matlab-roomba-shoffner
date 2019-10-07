
while true
        img=r.getImage;
        imshow(img);
        detector=vision.CascadeObjectDetector();
        bbox=step(detector, img);
        imageOut = insertObjectAnnotation(img,'rectangle',bbox,'Face');
        image(imageOut);
        drawnow
        pause(1);
     end

% full body detector

img = r.getImage;
imshow(img);
bod_detector = vision.PeopleDetector()
peopleDetector.WindowStride = [4 4];
peopleDetector.MinSize = [256 128];
[bboxes, scores] = step(peopleDetector,I);
I_people = insertObjectAnnotation(I,'rectangle',bboxes,scores);
figure, imshow(I_people);

% Eye detector
I  = r.getImage;
% Detect faces
eyeDetector = vision.CascadeObjectDetector('eyepairsmall');
bboxes = step(eyeDetector,I);
% Select the first face
face = I(bboxes(1,2):bboxes(1,2)+bboxes(1,4),bboxes(1,1):bboxes(1,1)+bboxes(1,3));
% Detect SURF features
ftrs = detectSURFFeatures(face);
%Plot facial features.
imshow(face);hold on; plot(ftrs);





